import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: PreferredSize(
  preferredSize: Size.fromHeight(100.0),
  child:  AppBar( flexibleSpace:  Container(
    decoration: 
      BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/menu.png'),
          fit: BoxFit.cover,
        ),
      ),
  ), ),)));
  }
}
