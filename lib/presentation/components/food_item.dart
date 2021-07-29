import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  final String name;
  final String image;
  final int value;
  const FoodItem(
      {Key? key, required this.name, required this.image, required this.value})
      : super(key: key);
  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    int _value = 0;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(widget.name),
        //leading: Image.network(widget.image),
        trailing: Radio(
          value: widget.value,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = int.parse(value.toString());
            });
          },
        ),
      ),
    );
  }
}
