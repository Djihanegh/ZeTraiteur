import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: Align(
              alignment: Alignment.center,
              child: Container(
                height: size.height,
                width: size.width,
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

        child:  Align (
          alignment: Alignment.bottomCenter,
          child :Text(
          '© 2021, Ze Traiteur.',
          style: TextStyle(
            fontFamily: 'HelveticaNeue',
            // color: kColorGrey,
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
