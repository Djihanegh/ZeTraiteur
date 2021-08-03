import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class LabeledTextFormField extends StatelessWidget {
  final String? title;

  final double? padding;
  final TextEditingController? controller;
  final String? hintText;
  final String? initialValue;
  final bool? obscureText;
  final bool? enabled;
  final String? error;
  final TextInputType? keyboardType;
  final Function? onChanged;
  final Function? onEdit;

  final Function? validator;

  LabeledTextFormField({
    this.title,
    this.padding,
    this.controller,
    this.hintText,
    this.initialValue,
    this.obscureText,
    this.enabled,
    this.error,
    this.keyboardType,
    this.onChanged,
    this.onEdit,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding ?? 20, left: 18, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          title != ""
              ? Text('$title:',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w400, fontSize: 16))
              : Text(""),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 6,
                  child: TextFormField(
                    keyboardType: keyboardType,
                    obscureText: obscureText ?? false,
                    controller: controller,
                    enabled: enabled ?? true,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kColorPrimary),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: kColorPrimary),
                      ),
                      hintText: hintText,
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      errorText: error ?? null,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff575757),
                    ),
                    initialValue: initialValue,
                    cursorColor: kColorPrimary,
                    cursorWidth: 1,
                    onFieldSubmitted: (value) => onChanged!(value),
                    onChanged: (value) => onChanged!(value),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
