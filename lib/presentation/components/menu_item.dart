import 'package:flutter/material.dart';
import 'package:ze_traiteur/application/menu/menu_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/presentation/components/item_shimmer.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';
import 'menu_item_image.dart';
import 'no_internet.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  late List menus = [];
  late List extras = [];

  late ScrollController _scrollController;
  late MenuBloc _menuBloc;

  bool _loading = true;
  int _offset = 1;
  double scrollOffset = 0.0;
  String color = kRedHexa;

  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _offset++;
        _menuBloc.add(MenuEvent.getAllMenus(_offset));
        _loading = true;
      });
    }
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {}

    if (_scrollController.offset != 0.0) {
      scrollOffset = _scrollController.offset;
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            _menuBloc = getIt<MenuBloc>()..add(MenuEvent.getAllMenus(_offset)),
        child: BlocConsumer<MenuBloc, MenuState>(listener: (context, state) {
          if (_loading) {
            state.menusFailureOrSuccess.fold(
              () => null,
              (either) => either.fold(
                (failure) {
                  showToast(failure.msg!);
                },
                (success) {
                  if (success['results'].isNotEmpty) {
                    setState(() {
                      menus.addAll(success['results']);
                      extras.addAll(success['extras']['results']);
                      print(success['extras']['results']);
                    });
                  }
                  setState(() {
                    _loading = false;
                  });
                },
              ),
            );
          }
        }, builder: (context, state) {
          return state.menusFailureOrSuccess.fold(
              () => PostListItemShimmer(),
              (either) => either.fold(
                      (failure) => NoInternet(
                            msg: failure.map(
                              serverError: (_) => null,
                              apiFailure: (e) => e.msg,
                            ),
                          ), (success) {
                    return success['results'].isEmpty
                        ? showToast("Aucun resultat")
                        : _menusList(state);
                  }));
        }));
  }

  Widget _menusList(MenuState state) {
    List<Food> list = [];
    for (int i = 0; i < extras.length; i++) {
      list.insert(i, Food.fromJson(extras[i]));
    }

    return Stack(children: [
      Positioned.fill(
          top: 180,
          bottom: 130,
          right: 55,
          left: 55,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Color(int.parse(color)),
            ),
            height: 250,
          )),
      Positioned.fill(
        top: 200,
        bottom: 160,
        left: 85,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: menus.length,
          itemBuilder: (context, indexx) {
            return MenuItemImage(
              menuItem: MenuItem.fromJson(menus[indexx]),
              extras: list,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 50,
            );
          },
        ),
      ),
    ]);
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }
}
