import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ze_traiteur/application/menu/menu_bloc.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/presentation/components/shimmer.dart';
import 'package:ze_traiteur/presentation/components/show_dialog.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/pages/menu/menu_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';
import 'no_internet.dart';

/*final List<MenuItem> imgList = [
  MenuItem(
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'Menu',
      kOrangeHexa),
  MenuItem(
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'Menu',
      kRedHexa),
  MenuItem(
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'Menu',
      kGreenHexa),
  MenuItem(
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'Menu',
      kBleuHexa),
  MenuItem(
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'Menu',
      kYellowHexa),
  MenuItem(
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
      'Menu',
      kOrangeHexa),
];*/

Widget widget(String? img, String? color) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      color: Color(int.parse(color ?? "")),
    ),
    height: 350,
    child: Container(
        child: Container(
            width: 220,
            height: 50,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Container(
              width: 230,
              height: 60,
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        img ?? '',
                        fit: BoxFit.cover,
                        width: 1000.0,
                        height: 1000.0,
                      ),
                    ],
                  )),
            ))));

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  String color = kRedHexa;
  late List menus = [];
  late ScrollController _scrollController;
  late MenuBloc _menuBloc;
  bool _loading = true;

  int _offset = 1;

  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _offset++;
        _menuBloc.add(MenuEvent.getAllMenus(1));
        _loading = true;
      });
    }
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {}
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = menus
        .map((item) => GestureDetector(
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuScreen()),
              );
            },
            child: Container(
                child: Container(
                    width: 220,
                    height: 50,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Container(
                      width: 230,
                      height: 60,
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          child: Stack(
                            children: <Widget>[
                              CachedNetworkImage(
                            imageUrl: item['image'],
                            width: 1000,
                            height: 1000,
                            fit: BoxFit.cover,
                           /* imageBuilder: (context, imageProvider) {
                              return Container(
                                width: 60,
                                height: 150,
                                padding: EdgeInsets.all(0.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                      width: 2.0, color: Colors.white),
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              );
                            },*/
                            errorWidget: (context, url, error) {
                              return Image.asset(
                                'assets/images/no_image.jpg',
                                width: 48,
                                height: 48,
                              );
                            },
                          ),
                            /*  Image.network(
                                item['image'] ?? '',
                                fit: BoxFit.cover,
                                width: 1000.0,
                                height: 1000.0,
                              ),*/
                            ],
                          )),
                    )))))
        .toList();

    return BlocProvider(
        create: (context) =>
            _menuBloc = getIt<MenuBloc>()..add(MenuEvent.getAllMenus(1)),
        child: BlocConsumer<MenuBloc, MenuState>(listener: (context, state) {
          if (_loading) {
            state.menusFailureOrSuccess.fold(
              () => null,
              (either) => either.fold(
                (failure) {
                  showDialogWidget("FAILURE", context);
                  // showToast(failure.msg);
                },
                (success) {
                  if (success['results'].isNotEmpty) {
                    setState(() {
                      menus.addAll(success['results']);
                      print(menus);
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
              () => PostListShimmer(),
              (either) => either.fold(
                      (failure) => NoInternet(
                            msg: failure.map(
                              serverError: (_) => null,
                              apiFailure: (e) => e.msg,
                            ),
                            //     onPressed: null,
                          ), (success) {
                    return success['results'].isEmpty
                        ? showToast("NOO RESULT")
                        : _menusList(imageSliders);
                  }));

          // Text('Nom Menu'),
          //]);
        }));
  }

  Widget _menusList(List<Widget> menu) {
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
          top: 0,
          // bottom: 210,
          // left: 60,
          child:
              /*ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, index) {
                return widget(imgList[index].imageUrl, imgList[index].color);
              })*/

              CarouselSlider(
            items: menu,
            options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                    setState(() {
                      //color = menu[index] ?? '';
                    });
                  });
                }),
          )),
      Positioned.fill(
        top: 430,
        left: 80,
        child: Text(
          "menus[_current].name ?? ''",
          style: TextStyle(fontSize: 30),
        ),
      )
    ]);
  }
}
