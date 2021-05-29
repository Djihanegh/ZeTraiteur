import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

final List<MenuItem> imgList = [
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
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
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
                        item.imageUrl ?? '',
                        fit: BoxFit.cover,
                        width: 1000.0,
                        height: 1000.0,
                      ),
                      
                      
                    ],
                  )),
            ))))
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  String color = kRedHexa;
  @override
  Widget build(BuildContext context) {
    return //Column(children: [

        Stack(children: [
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
          child: CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                    setState(() {
                      color = imgList[index].color ?? '';
                    });
                  });
                }),
          )),
            Positioned.fill(
                        top: 430,
                        left: 80,
                        child: 
                    Text(
                          imgList[_current].name ?? '',
                          style: TextStyle(fontSize: 30),
                        ),
            )
    ]);

    // Text('Nom Menu'),
    //]);
  }
}
