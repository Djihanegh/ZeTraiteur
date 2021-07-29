import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

@override
initState() {}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return _bodyWidget();
  }

  Widget _bodyWidget() {
    return Drawer(
        child: Container(
            color: Colors.white,
            child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: -30,
                                      right: -20,
                                      child: Image.asset(
                                          "assets/images/drawer.png"),
                                    )
                                  ],
                                ),
                                height: 180,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE51419),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(context, '/home');
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 24,
                                            height: 24,
                                            child: Icon(
                                              Icons.home,
                                              color: Colors.black,
                                            )),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'Home',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Ubuntu',
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ]))))));
  }
}
