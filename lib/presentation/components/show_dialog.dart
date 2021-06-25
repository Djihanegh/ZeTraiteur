import 'package:flutter/material.dart';
import '../../infrastructure/core/pref_manager.dart';
import 'package:flutter/gestures.dart';



showDialogWidget(String msg, BuildContext context,
   ) async {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:  Colors.white,
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
                backgroundColor: Colors.red,
              ),
            ),
          ),
          RichText(
            text: new TextSpan(
              text: ' ',
              children: <TextSpan>[
                new TextSpan(
                    text: msg,
                    style: TextStyle(
                        color:
                            Color(0xFF444242))),
               
              ],
            ),
          ),
        ]));
      });
}
