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

class YourShoppingCartScreen extends StatefulWidget {
  @override
  _YourShoppingCartScreenState createState() => _YourShoppingCartScreenState();
}

class _YourShoppingCartScreenState extends State<YourShoppingCartScreen> {
  List<Lines>? lines;
  @override
  Widget build(BuildContext context) {
    List<Food> foods = [];
    List<Food> extras = [];
    List<ShoppingCartLines> lines = [];
    double totalPrice = 0.0;
    double totalFoodsPrice = 0.0;
    double totalExtrasPrice = 0.0;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
                            apiFailure: (e) => showToast(""),
                          );
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
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount:  lines.length,
                            itemBuilder: (context, indexx) {
                              /* totalCompoPrice =
                                                    totalCompoPrice +
                                                        foods[indexx].price!;

                                                print(totalCompoPrice);*/

                              return CartItemWidget(
                                  name: lines[0].composition!.menu!,
                                  foods: lines[0].composition!.selectedFoods!,
                                  extras: lines[0].composition!.extras);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 10,
                              );
                            },
                          ),
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
                                  int? clientId = Prefs.getInt(Prefs.ID);
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

 

