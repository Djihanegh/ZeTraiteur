import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ze_traiteur/injection.dart';
import 'package:ze_traiteur/presentation/pages/home/home_screen.dart';

import 'application/menu/menu_bloc.dart';
import 'application/order/order_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  //final OrderBloc orderBloc = getIt<OrderBloc>() ;
  runApp(MultiBlocProvider(providers: [
    BlocProvider<MenuBloc>(create: (context) => getIt<MenuBloc>()),
    BlocProvider<OrderBloc>(create: (context) => getIt<OrderBloc>()),
  ], child: MaterialApp(home: MyApp())));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
