import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({Key? key}) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                
                border: Border.all(
                    color: kColorPrimary, //Color(0xFF797A82),
                    width: 2.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(70)),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 9,
                width: 9,
                decoration: BoxDecoration(
                    color: kColorPrimary,
                    borderRadius: BorderRadius.circular(70)),
              ),
            )));
  }
}
