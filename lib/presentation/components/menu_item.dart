import 'package:flutter/material.dart';
import 'package:ze_traiteur/application/menu/menu_bloc.dart';
import 'package:ze_traiteur/presentation/components/item_shimmer.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

import '../../injection.dart';
import 'menu_item_image.dart';
import 'no_internet.dart';

class MenuItemWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuItemWidgetState();
  }
}

class _MenuItemWidgetState extends State<
    MenuItemWidget> // with AutomaticKeepAliveClientMixin<MenuItemWidget>
{
  late List menus = [];
  late List extras = [];

  ScrollController? _scrollController;
  MenuBloc? _menuBloc;

  bool _loading = true;
  int _offset = 1;
  double scrollOffset = 0.0;
  String color = kRedHexa;

  _scrollListener() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      setState(() {
        print("reach the bottom");

        _offset++;
        _menuBloc!.add(MenuEvent.getAllMenus(_offset));
        _loading = true;
      });
    }
    if (_scrollController!.offset <=
            _scrollController!.position.minScrollExtent &&
        !_scrollController!.position.outOfRange) {
      print("reach the TOOP");
    }

    if (_scrollController!.offset != 0.0) {
      scrollOffset = _scrollController!.offset;
    }
  }

  static const _pageSize = 25;

  /* final PagingController<int, Food> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await Dio().get(
        'http://159.65.25.199:8000/apis/menus?page=$pageKey',
      );
      final isLastPage = newItems.data["results"].length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems.data["results"]);
      } else {
        final nextPageKey = pageKey + newItems.data["results"].length;
        _pagingController.appendPage(newItems.data["results"], nextPageKey.toInt());
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }
*/
//  @override
  //bool get wantKeepAlive => true;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(_scrollListener);

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
                (failure) {},
                (success) {
                  if (success['results'].isNotEmpty) {
                    setState(() {
                      menus.addAll(success['results']);
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
                      (failure) => menus.isEmpty
                          ? NoInternet(
                              msg: failure.map(
                                serverError: (_) => null,
                                apiFailure: (e) => e.msg,
                              ),
                            )
                          : _menusList(state), (success) {
                    return success['results'].isEmpty
                        ? showToast("Aucun resultat")
                        : _menusList(state);
                  }));
        }));
  }

  Widget _menusList(MenuState state) {
    SizeConfig().init(context);

    return Stack(children: [
      Positioned.fill(
          top: 180,
          bottom: 130,
          right: 40,
          left: 40,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Color(int.parse(color)),
            ),
          )),
      Positioned.fill(
        top: 200,
        bottom: 160,
        left: SizeConfig.screenWidth! * 0.17,
        child:
            /* Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                if (!_loading && scrollInfo.metrics.pixels ==
                    scrollInfo.metrics.maxScrollExtent) {
                 //_loadData();
                  // start loading data
                  setState(() {
                    _loading = true;
                  });
                }
              },
              child: */
            ListView.separated(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: menus.length,
          itemBuilder: (context, indexx) {
            List<int> ids = [];
            List<String> sections = [];

            int length = 0;
            if (menus[indexx]["sections"].isNotEmpty) {
              length = menus[indexx]["sections"].length;

              for (int i = 0; i < length; i++) {
                ids.add(menus[indexx]["sections"][i]["id"]);
                sections.add(menus[indexx]["sections"][i]["name"]);
              }
            }

            return MenuItemImage(
              sectionNames: sections,
              menuId: menus[indexx]["id"],
              name: menus[indexx]["name"],
              sectionId: ids,
              imageUrl: menus[indexx]["image"],
              sectionLength: length,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 10,
            );
          },
          // ))
        ),
      ),
      _loading
          ? Container(
              height: _loading ? 50.0 : 0,
              color: Colors.transparent,
              child: Center(
                child: new CircularProgressIndicator(),
              ),
            )
          : Container()
    ]);
  }

  @override
  void dispose() {
    _scrollController!.dispose();

    super.dispose();
  }
}
