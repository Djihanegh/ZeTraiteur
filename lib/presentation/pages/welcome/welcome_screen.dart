import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/pages/home/home_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class WelcomeScreen extends StatefulWidget {
  static String routeName = "/welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Container(
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: Image.asset(
              "assets/images/welcome.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned.fill(
          top: 180,
          left: 50,
          right: 50,
          bottom: 190,
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kColorSecondary, kColorPrimary],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              height: 200,
              width: 150,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Bienvenue chez Ze Traiteur", style: textStyle),
                          SizedBox(
                            height: 10,
                          ),
                          Text("De delicieux plat", style: textStyle),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Vous attend",
                            style: textStyle,
                          )
                        ],
                      )),
                ],
              )),
        )
      ],
    ));
  }
}
