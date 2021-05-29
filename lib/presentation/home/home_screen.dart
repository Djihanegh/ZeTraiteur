import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/components/drawer.dart';
import 'package:ze_traiteur/presentation/components/menu_item.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        key: _scaffoldKey,
        drawer: DrawerPage(),
        appBar: AppBar(
          backgroundColor: kColorPrimary,
          elevation: 0,
          //bottom: tabBar,
          //title: _logoWidget(),
          //centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.view_headline,
              color: Colors.white,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                height: size.height,
                width: size.width,
                child: Image.asset(
                  "assets/images/home.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
                top: 0,
                child: Stack(
                  children: [
                    Positioned.fill(
                        top: 180,
                        bottom: 130,
                        right: 55,
                        left: 55,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white,
                          ),
                          height: 250,
                        )),
                    Positioned.fill( top: 0,  child: CarouselWithIndicatorDemo(), ),
                    
                  ],
                )),
          ],
        ));
  }
}
