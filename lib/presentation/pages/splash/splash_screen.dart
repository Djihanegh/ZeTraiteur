import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/pages/welcome/welcome_screen.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';
import '../../utils/constants.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash_screen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).push(PageRouteBuilder(
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondAnimation,
                Widget child) {
              return ScaleTransition(
                scale: animation,
                child: child,
                alignment: Alignment.center,
              );
            },
            transitionDuration: Duration(seconds: 2),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondAnimation) {
              return WelcomeScreen();
            })));
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: Align(
        alignment: Alignment.center,
        child: Container(
            height: SizeConfig.screenHeight!,
            width: SizeConfig.screenWidth!,
            child: Container(
              child: Container(
                  height: 300,
                  width: 200,
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 350,
                  )),
              // nextScreen: WelcomeScreen(),
              // pageTransitionType: PageTransitionType.scale,
            ),
            decoration: BoxDecoration(
                color: Colors.red,
                gradient: LinearGradient(
                    colors: [kColorSecondary, kColorPrimary],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter))),
      )),
      Positioned.fill(
          bottom: 20,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              '© 2021, Ze Traiteur.',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
          ))
    ]));
  }
}
