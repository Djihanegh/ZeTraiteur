import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/pages/home/home_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:flutter/gestures.dart';

showDialogWidget(
  String msg,
  String msg2,
  String msg3,
  Widget function,
  BuildContext context,
) async {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            content: Stack(overflow: Overflow.visible, children: <Widget>[
              Positioned(
                right: -40.0,
                top: -40.0,
                child: InkResponse(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    child: Icon(Icons.close),
                    backgroundColor: kColorPrimary,
                  ),
                ),
              ),
              RichText(
                text: new TextSpan(
                  text: ' ',
                  children: <TextSpan>[
                    new TextSpan(
                        text: msg, style: TextStyle(color: Color(0xFF444242))),
                    TextSpan(
                        text: msg3,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF444242)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                  function));
                          }),
                    new TextSpan(
                        text: msg2, style: TextStyle(color: Color(0xFF444242))),
                  ],
                ),
              ),
            ]));
      });
}
