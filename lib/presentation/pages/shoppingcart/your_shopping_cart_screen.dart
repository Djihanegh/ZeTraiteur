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
import 'package:ze_traiteur/presentation/pages/facture/facture_screen.dart';
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
  bool isOrderCreated = false;
  Map<String,dynamic> result = {};

  //bool isLoading = false;

  @override
  void initState() {
    super.initState();
    clientId = Prefs.getInt(Prefs.ID);
  }

  @override
  Widget build(BuildContext context) {
    //isLoading = false;
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
                          //   isLoading = false;
                          isOrderCreated = true;
                          result = success ;
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
                              child: //isLoading ?
                                  TextButton(
                                onPressed: () async {
                                  //  isLoading = true;
                                  Map<String, dynamic> body = {
                                    "client": clientId,
                                    "lines": state.lines
                                  };
                                 await _createOrder(body);


                                  if (isOrderCreated) {
                                    showToast("Commande reussie!");

                                    setState(() {
                                      isOrderCreated = false;
                                    });

                                    print(body);

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => FactureScreen(body: result)),
                                    );

                                  }
                                },
                                child: Text(
                                  "Valider",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ) /*: Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ) */
                              ))
                    ],
                  );
                })))));
  }

  Future<void> _createOrder(Map<String, dynamic> body) async {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.createOrder(body));
  }
}
