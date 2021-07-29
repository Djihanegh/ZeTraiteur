import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:ze_traiteur/application/register/register_bloc.dart';
import 'package:ze_traiteur/injection.dart';
import 'package:ze_traiteur/presentation/pages/home/home_screen.dart';
import 'package:ze_traiteur/presentation/routes/routes.dart';

import 'application/menu/menu_bloc.dart';
import 'application/order/order_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<MenuBloc>(create: (context) => getIt<MenuBloc>()),
        BlocProvider<OrderBloc>(create: (context) => getIt<OrderBloc>()),
        BlocProvider<RegisterBloc>(create: (context) => getIt<RegisterBloc>()),
      ],
      child: ScreenUtilInit(
          designSize: Size(360, 690),
          builder: () => MaterialApp(
                home: MyApp(),
                routes: routes,
              ))));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: routes,
    );
  }
}
