import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/application/register/register_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
import 'package:ze_traiteur/presentation/components/labeled_text_form_field.dart';
import 'package:ze_traiteur/presentation/components/show_dialog.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/pages/confirmation/confirmation_screen.dart';
import 'package:ze_traiteur/presentation/pages/signup/sign_up_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class Panier extends StatefulWidget {
  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  RegisterBloc? _registerBloc;
  static String address = "";
  static int phone=  775896545;

  TextEditingController phoneEditingController =
      TextEditingController(text: "$phone");
  TextEditingController addressEditingController = TextEditingController(
    text: address,
  );
  double totalPrice = 0.0;
  int foodIndex = 0;
  double totalCompoPrice = 0.0;

  @override
  Widget build(BuildContext context) {
    List<Food> foods = [];
    List<Food> extras = [];
    List<String> keys = [];
    List<ShoppingCartLines> lines = [];

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: kColorPrimary,
          centerTitle: true,
          title: Text(
            'Panier',
            style: GoogleFonts.lato(color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: BlocProvider.value(
                value: BlocProvider.of<RegisterBloc>(context),
                child: BlocListener<RegisterBloc, RegisterState>(
                    listener: (context, state) {
                  state.isUserCreatedFailureOrSuccess.fold(
                    () => null,
                    (either) {
                      either.fold(
                        (failure) {
                          failure.map(
                            serverError: (_) => showToast("Server failure"),
                            apiFailure: (e) {
                              showDialogWidget("Vous n'avez pas de compte ", "",
                                  " Creez en un.", SignUpScreen(), context);
                            },
                          );
                        },
                        (success) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ConfirmationScreen(),
                              ));
                        },
                      );
                    },
                  );
                }, child: BlocBuilder<RegisterBloc, RegisterState>(
                        builder: (context, state) {
                  return BlocProvider.value(
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
                                showToast('');
                              },
                            );
                          },
                        );
                      }, child: BlocBuilder<OrderBloc, OrderState>(
                              builder: (context, state) {
                        address = state.address;
                        phone = state.phone;
                        lines = [];
                        lines.addAll(state.shoppingCartLines!);

                        print("LEEEENGTH");
                        print(lines.length);

                        return ListView(children: [
                          LabeledTextFormField(
                              controller: addressEditingController,
                              title: "Lieu de livraison",
                              enabled: true,
                              onChanged: (value) {
                                BlocProvider.of<OrderBloc>(context)
                                  ..add(OrderEvent.addressChanged(value));
                              }),
                          LabeledTextFormField(
                              controller: phoneEditingController,
                              title: "Numero de telephone",
                              enabled: true,
                              hintText: "",
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                BlocProvider.of<OrderBloc>(context)
                                  ..add(OrderEvent.numberPhoneChanged(
                                      int.tryParse(value.toString()) ?? 0));
                              }),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 20, left: 18, bottom: 10),
                            child: Text("Repas:",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                          ),
                          SizedBox(
                              height: 200,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: lines.length,
                                  itemBuilder: (context, index) {
                                    extras = [];
                                    foods = [];
                                    totalPrice = 0.0;
                                    totalCompoPrice = 0.0;

                                    extras.addAll(
                                        lines[index].composition!.extras);
                                    foods.addAll(lines[index]
                                        .composition!
                                        .selectedFoods!);
                                    foods.addAll(extras);

                                    totalPrice = totalPrice + totalCompoPrice;

                                    return Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                              lines[index].composition!.menu!,
                                              style: GoogleFonts.lato(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16)),
                                          subtitle: SizedBox(
                                              height: 50,
                                              child: ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: foods.length,
                                                itemBuilder: (context, indexx) {
                                                  print("AAAA");
                                                  print(foods.length);

                                                  totalCompoPrice =
                                                      totalCompoPrice +
                                                          foods[indexx].price!;

                                                  return Text(
                                                      foods[indexx]
                                                          .name!
                                                          .substring(0, 3),
                                                      style:
                                                          GoogleFonts.lato());
                                                },
                                                separatorBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return SizedBox(
                                                    width: 10,
                                                  );
                                                },
                                              )),
                                          trailing: Icon(
                                            Icons.mode_edit,
                                            color: kColorPrimary,
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(),
                                                Text("$totalCompoPrice" + " DA",
                                                    style: GoogleFonts.lato())
                                              ],
                                            ))
                                      ],
                                    );
                                  })),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 18, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sous total:",
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16)),
                                    Text(totalPrice.toString() + " DA",
                                        style: GoogleFonts.lato(fontSize: 16))
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 18, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Frais de service:",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      Text("160" + "DA",
                                          style: GoogleFonts.lato(fontSize: 16))
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 18, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Frais de livraison:",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      Text("160" + "DA",
                                          style: GoogleFonts.lato(fontSize: 16))
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, left: 18, right: 20, bottom: 10),
                                  child: Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              width: 2.0,
                                              color:
                                                  Colors.grey.withOpacity(0.5)),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "TOTAL:",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            totalPrice.toString() + " DA",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ],
                                      ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 0, left: 20, right: 20, bottom: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: kColorPrimary),
                                    height: 40,
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {
                                          BlocProvider.of<RegisterBloc>(context)
                                            ..add(RegisterEvent.isUserCreated(
                                                state.phone));
                                        },
                                        child: Text("Passer ma commande",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ))),
                                  ))
                            ],
                          )
                        ]);
                      })));
                })))));
  }
}
