import 'package:flutter/widgets.dart';

import 'package:ze_traiteur/presentation/pages/confirmation/confirmation_screen.dart';
import 'package:ze_traiteur/presentation/pages/home/home_screen.dart';
import 'package:ze_traiteur/presentation/pages/shoppingcart/shopping_cart_screen.dart';
import 'package:ze_traiteur/presentation/pages/shoppingcart/your_shopping_cart_screen.dart';
import 'package:ze_traiteur/presentation/pages/signup/sign_up_screen.dart';
import 'package:ze_traiteur/presentation/pages/splash/splash_screen.dart';
import 'package:ze_traiteur/presentation/pages/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = {
  ConfirmationScreen.routeName: (context) => ConfirmationScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  Panier.routeName: (context) => Panier(),
  HomeScreen.routeName: (context) => HomeScreen(),
  YourShoppingCartScreen.routeName: (context) => YourShoppingCartScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
};
