import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Container(
            height: size.height,
            width: size.width,
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
