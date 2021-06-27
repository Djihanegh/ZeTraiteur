import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  final String name;
  final String image;
  final Object value;
  const FoodItem(
      {Key? key, required this.name, required this.image, required this.value})
      : super(key: key);
  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  var selectedValue = 'animal';

  @override
  Widget build(BuildContext context) {
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
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString();
            });
          },
        ),
      ),
    );
  }
}
