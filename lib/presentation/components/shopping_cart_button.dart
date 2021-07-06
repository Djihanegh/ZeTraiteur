import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/pages/shoppingcart/shopping_cart_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class ShoppingCartButton extends StatefulWidget {
  
  const ShoppingCartButton({Key? key})
      : super(key: key);

  @override
  _ShoppingCartButtonState createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 15, top: 10),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Panier()), //widget.extras , widget.foods
              );
            },
            child: Container(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
                height: 60,
                width: 65,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                    color: kColorPrimary))));
  }
}
