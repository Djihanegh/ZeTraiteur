import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/lines.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
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
                      Navigator.pop(context);
                      either.fold(
                        (failure) {
                          failure.map(
                            serverError: (_) => null,
                            apiFailure: (e) => showToast(""),
                          );
                        },
                        (success) {
                          showToast('');
                        },
                      );
                    },
                  );
                }, child: BlocBuilder<OrderBloc, OrderState>(
                        builder: (context, state) {
                  print("LENGTH");

                  lines = state.shoppingCartLines!;

                  print(lines.length);

                  return ListView(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 5, //lines.length,
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
                                  borderRadius: BorderRadius.circular(25),
                                  color: kColorPrimary),
                              child: TextButton(
                                onPressed: () {},
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
}

/*Column(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                          lines[index]
                                              .composition!
                                              .menu
                                              .toString(),
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            for (var food in foods)
                                                                      
                                                                             Text(
                                                  "${food.name!.substring(0, 3)}  ",
                                                  style: GoogleFonts.lato()),

                                            
                                             
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Text("${totalFoodsPrice} DA"),
                                            )
                                          ]),
                                      Row(
                                        children: [
                                          Text("800 DA"),
                                        ],
                                      )
                                    ],
                                  ),

                                  /*  ListTile(
                                    title: Text(
                                        lines[index]
                                            .composition!
                                            .menu
                                            .toString(),
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16)),
                                    subtitle: Column(
                                      children: [
                                        Expanded(
                                           //height: 100,
                                            child: Row(
                                              mainAxisAlignment:
                                                MainAxisAlignment
                                              .spaceBetween,
                                                children: [

                                            /*  SizedBox(
                                                height: 100,
                                                  child: ListView.separated(
                                                    shrinkWrap:true ,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: foods.length,
                                                    itemBuilder:
                                                        (context, indexx) {
                                                      /*  totalCompoPrice =
                                                    totalCompoPrice +
                                                        foods[indexx].price!;

                                                print(totalCompoPrice);*/

                                                      return Text(
                                                          foods[indexx]
                                                              .name!
                                                              .substring(0, 3),
                                                          style: GoogleFonts
                                                              .lato());
                                                    },
                                                    separatorBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return SizedBox(
                                                        width: 10,
                                                      );
                                                    },
                                                  )),*/
                                              Text("800 DA"),
                                             ],
                                            )),
                                       /* SizedBox(
                                            height: 50,
                                            child: ListView.separated(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: extras.length,
                                              itemBuilder: (context, indexx) {
                                                /*    totalCompoPrice =
                                                    totalCompoPrice +
                                                        foods[indexx].price!;

                                                print(totalCompoPrice);*/

                                                return Text(
                                                    extras[indexx]
                                                        .name!
                                                        .substring(0, 3),
                                                    style: GoogleFonts.lato());
                                              },
                                              separatorBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return SizedBox(
                                                  width: 10,
                                                );
                                              },
                                            )),
                                      ]
                                    ),
                                    trailing: Icon(
                                      Icons.delete,
                                      color: kColorPrimary,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(),
                                          Text("800 DA ",
                                              style: GoogleFonts.lato())
                                        ],
                                      ))
                                ],
                              );
                            })),*/
                            */
                            */
