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
          leading: IconButton(
            icon: Icon(
              Icons.view_headline,
              color: Colors.white,
            ),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
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
              child: MenuItemWidget(),
            ),
          ],
        ));
  }
}
