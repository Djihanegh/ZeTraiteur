import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';
import '../../utils/constants.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash_screen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: Align(
              alignment: Alignment.center,
              child: Container(
                height: SizeConfig.screenHeight!,
                width: SizeConfig.screenWidth!,
                child: Container(
                    height: 300,
                    width: 200,
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 350,
                    )),
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                        colors: [kColorSecondary, kColorPrimary],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ))),
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
