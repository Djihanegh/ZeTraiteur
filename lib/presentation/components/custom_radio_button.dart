import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class CustomRadioButton extends StatefulWidget {
  final bool? isActive;
  final int? id;

  final Function? onPressed;

  const CustomRadioButton({Key? key, this.isActive, this.onPressed, this.id})
      : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  bool isActive = false;
  int? id;

  @override
  void initState() {
    super.initState();

    setState(() {
      isActive = widget.isActive!;
      id = widget.id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isActive = !isActive;
          });

          widget.onPressed!(isActive, id);
        },
        child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                border: Border.all(
                    color: isActive ? kColorPrimary : Color(0xFF797A82),
                    width: 2.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(70)),
            child: isActive
                ? Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 9,
                      width: 9,
                      decoration: BoxDecoration(
                          color: isActive ? kColorPrimary : Color(0xFF797A82),
                          borderRadius: BorderRadius.circular(70)),
                    ),
                  )
                : Container()));
  }
}