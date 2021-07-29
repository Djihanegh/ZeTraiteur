import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/lines.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
import 'package:ze_traiteur/infrastructure/core/pref_manager.dart';
import 'package:ze_traiteur/presentation/components/cart_item.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class YourShoppingCartScreen extends StatefulWidget {
  static String routeName = "/your_shopping_cart_screen";

  @override
  _YourShoppingCartScreenState createState() => _YourShoppingCartScreenState();
}

class _YourShoppingCartScreenState extends State<YourShoppingCartScreen> {
  List<Lines>? lines;
  List<Food> foods = [];
  List<Food> extras = [];
  double totalPrice = 0.0;
  double totalFoodsPrice = 0.0;
  double totalExtrasPrice = 0.0;
  int? clientId = 0;

  @override
  void initState() {
    super.initState();
    clientId = Prefs.getInt(Prefs.ID);
  }

  @override
  Widget build(BuildContext context) {
    List<ShoppingCartLines> lines = [];
    foods = [];
    extras = [];

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: kColorPrimary,
          centerTitle: true,
          title: Text(
            'Votre panier',
            style: GoogleFonts.lato(color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: BlocProvider.value(
                value: BlocProvider.of<OrderBloc>(context),
                child: BlocListener<OrderBloc, OrderState>(
                    listener: (context, state) {
                  state.createOrderFailureOrSuccess.fold(
                    () => null,
                    (either) {
                      either.fold(
                        (failure) {
                          failure.map(
                              serverError: (_) => null,
                              apiFailure: (e) {
                                print(e);
                                showToast("Failure");
                              });
                        },
                        (success) {
                          showToast('Commande reussie !');
                        },
                      );
                    },
                  );
                }, child: BlocBuilder<OrderBloc, OrderState>(
                        builder: (context, state) {
                  lines = state.shoppingCartLines!;

                  return ListView(
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: lines.length,
                          itemBuilder: (context, indexx) {
                            return CartItemWidget(
                                name: lines[indexx].composition!.menu!,
                                foods:
                                    lines[indexx].composition!.selectedFoods!,
                                extras: lines[indexx].composition!.extras);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0, left: 20, right: 20, bottom: 20),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kColorPrimary),
                              child: TextButton(
                                onPressed: () {
                                  Map<String, dynamic> body = {
                                    "client": clientId,
                                    "lines": state.lines
                                  };
                                  _createOrder(body);
                                },
                                child: Text(
                                  "Valider",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              )))
                    ],
                  );
                })))));
  }

  Future<void> _createOrder(Map<String, dynamic> body) async {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.createOrder(body));
  }
}
