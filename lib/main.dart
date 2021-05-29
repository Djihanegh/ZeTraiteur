import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: HomeScreen(),
    );
  }
}

