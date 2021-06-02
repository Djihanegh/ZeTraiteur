import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/home/home_screen.dart';
import 'package:ze_traiteur/presentation/pages/confirmation/confirmation_screen.dart';

import 'presentation/pages/menu/menu_screen.dart';
import 'presentation/pages/shoppingcart/your_shopping_cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MenuScreen(),
    );
  }
}
