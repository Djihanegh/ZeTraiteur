import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/application/register/register_bloc.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/lines.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
import 'package:ze_traiteur/infrastructure/core/pref_manager.dart';
import 'package:ze_traiteur/presentation/components/labeled_text_form_field.dart';
import 'package:ze_traiteur/presentation/components/shopping_cart_listview.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class Panier extends StatefulWidget {
  static String routeName = "/panier";

  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  static String address = "";
  static String phone = "";
  double totalPrice = 0.0;
  int foodIndex = 0;
  double totalCompoPrice = 0.0,
      totalCompo = 0.0,
      totalCompoPrices = 0.0,
      total = 0.0;

  int deliveryFee = 0;
  String value = "";
  bool isLoading = false;
  List<Food> foods = [];
  List<Food> extras = [];
  int index = 0, _index = 0;

  //String _address = "";
  List<String> citiesByName = [];

  TextEditingController phoneEditingController =
      TextEditingController(text: phone);
  TextEditingController addressEditingController = TextEditingController(
    text: address,
  );
  bool isUserExists = false;
  List<ShoppingCartLines> shoppingCartLines = [];
  List<Lines> lines = [];

  @override
  void initState() {
    super.initState();

    phone = Prefs.getString(Prefs.PHONE) ?? "";
    address = Prefs.getString(Prefs.ADDRESS) ?? "";
  }

  void _saveUserData(int id, String numberPhone, String address) async {
    Prefs.setString(Prefs.PHONE, numberPhone.toString());
    Prefs.setString(Prefs.ADDRESS, address);
    Prefs.setInt(Prefs.ID, id);
  }

  @override
  Widget build(BuildContext context) {
    List<CityObj> allCities = [];

    foods = [];
    extras = [];
    index = 0;

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
                value: BlocProvider.of<RegisterBloc>(context)
                  ..add(RegisterEvent.getCities(1)),
                child: BlocListener<RegisterBloc, RegisterState>(
                    listener: (context, registerState) {
                  registerState.getCitiesFailureOrSuccess.fold(() => null,
                      (either) {
                    either.fold((failure) {
                      failure.map(
                        serverError: (_) => null,
                        apiFailure: (e) => showToast(e.msg ?? ""),
                      );
                    }, (success) {
                      allCities = success;

                      citiesByName =
                          List.generate(allCities.length, (index) => "");

                      if (allCities.isNotEmpty) {
                        for (int i = 0; i < allCities.length; i++) {
                          citiesByName[i] = allCities[i].name;
                        }
                      }
                    });
                  });
                  registerState.isUserCreatedFailureOrSuccess.fold(
                    () => null,
                    (either) {
                      either.fold(
                        (failure) {
                          failure.map(
                              serverError: (_) =>
                                  showToast("Server failure, try again later."),
                              apiFailure: (e) {
                                setState(() {
                                  isUserExists = false;
                                });
                                BlocProvider.of<RegisterBloc>(context)
                                  ..add(RegisterEvent.changeUserStatus(false));
                              });
                        },
                        (success) {
                          setState(() {
                            isUserExists = true;
                          });
                          _saveUserData(success["id"], success["phone"],
                              success["address"]);
                          BlocProvider.of<RegisterBloc>(context)
                            ..add(RegisterEvent.changeUserStatus(true));
                        },
                      );
                    },
                  );
                }, child: BlocBuilder<RegisterBloc, RegisterState>(
                        builder: (context, registerState) {
                  return BlocProvider.value(
                      value: BlocProvider.of<OrderBloc>(context),
                      child: BlocListener<OrderBloc, OrderState>(
                          listener: (context, orderState) {
                        /*if(orderState.isLineDeleted){
                              lines.clear();
                              lines.insertAll(0,orderState.lines ?? []);
                              shoppingCartLines.clear();
                              shoppingCartLines.insertAll(0,orderState.shoppingCartLines ?? []);
                            }*/

                        if (orderState.address != "") {
                          //   deliveryFee = allCities[index].deliveryFee;
                          //   BlocProvider.of<OrderBloc>(context).add(OrderEvent.deliveryFeeChanged(deliveryFee));

                        }
                      }, child: BlocBuilder<OrderBloc, OrderState>(
                              builder: (context, orderState) {
                        value = orderState.address;
                        lines.clear();
                        lines.insertAll(0, orderState.lines ?? []);
                        shoppingCartLines.clear();
                        shoppingCartLines.insertAll(
                            0, orderState.shoppingCartLines ?? []);

                        totalPrice = 0.0;
                        total = 0.0;

                        if (shoppingCartLines.isNotEmpty) {
                          for (var line in shoppingCartLines) {
                            totalCompo = 0.0;
                            extras = [];
                            foods = [];
                            extras.addAll(line.composition!.extras);
                            foods.addAll(line.composition!.selectedFoods!);
                            foods.addAll(extras);

                            int i = 0;
                            while (i < foods.length) {
                              totalCompo = totalCompo + foods[i].price!;
                              i++;
                            }

                            if (line.quantity > 1) {
                              totalCompo = totalCompo * line.quantity;
                            }

                            totalPrice = totalPrice + totalCompo;

                            total = totalPrice + orderState.deliveryFee;
                            BlocProvider.of<OrderBloc>(context)
                                .add(OrderEvent.priceChanged(total));
                          }
                        }

                        return ListView(children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 20, left: 18, right: 8),
                              child: Text(
                                "Lieu de livraison:",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff575757),
                                ),
                              )),
                          Container(
                              width: double.infinity,
                              child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                      alignedDropdown: true,
                                      child: new DropdownButton<String>(
                                        hint: Text(
                                          value,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        items: citiesByName.isNotEmpty
                                            ? citiesByName.map((String value) {
                                                return new DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: new Text(value),
                                                );
                                              }).toList()
                                            : <String>[''].map((String value) {
                                                return new DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: new Text(value),
                                                );
                                              }).toList(),
                                        onChanged: (vl) {
                                          setState(() {
                                            value = vl!;
                                            index = citiesByName.indexOf(value);
                                            BlocProvider.of<OrderBloc>(context)
                                              ..add(OrderEvent.addressChanged(
                                                  value));
                                            deliveryFee =
                                                allCities[index].deliveryFee;

                                            BlocProvider.of<OrderBloc>(context)
                                                .add(OrderEvent
                                                    .deliveryFeeChanged(
                                                        deliveryFee));

                                            total = totalPrice +
                                                orderState.deliveryFee;
                                            BlocProvider.of<OrderBloc>(context)
                                                .add(OrderEvent.priceChanged(
                                                    total));

                                            setState(() {
                                              //totalPrice = totalPrice + deliveryFee ;
                                            });
                                          });
                                        },
                                      )))),
                          LabeledTextFormField(
                              controller: phoneEditingController,
                              title: "Numero de telephone",
                              enabled: true,
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                setState(() {
                                  phone = value;
                                });

                                BlocProvider.of<OrderBloc>(context)
                                  ..add(OrderEvent.numberPhoneChanged(
                                      int.tryParse(phone) ?? 0));
                              }),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 20, left: 18, bottom: 10),
                            child: Text("Repas:",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                          ),
                          shoppingCartLines.length > 0
                              ? SizedBox(
                                  height: 200,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: shoppingCartLines.length,
                                      itemBuilder: (context, indexx) {
                                        return ShoppingCartListItem(
                                          quantity: shoppingCartLines[indexx]
                                              .quantity,
                                          key: ValueKey(indexx),
                                          onPressed: () => delete(
                                              shoppingCartLines[indexx],
                                              indexx),
                                          index: indexx,
                                          lines: shoppingCartLines[indexx],
                                        );
                                      }))
                              : Column(children: [
                                  SizedBox(
                                      height: 150,
                                      child: Image.asset(
                                          "assets/images/empty-shopping-cart.png")),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: Text(
                                      "Votre panier est vide.",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  )
                                ]),
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
                                    Text("$totalPrice" + " DA",
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
                                      Text("Frais de livraison:",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      Text(
                                          orderState.deliveryFee
                                                  .toString() + // TODO
                                              "DA",
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
                                            "${total}" + " DA",
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
                                    width: double.infinity,
                                    child: isLoading
                                        ? Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            ),
                                          )
                                        : TextButton(
                                            onPressed: () async {
                                              isLoading = true;

                                              await _verifyUserExistence(
                                                  int.tryParse(phone)!);

                                              Future.delayed(
                                                  const Duration(seconds: 15),
                                                  () {
                                                setState(() {
                                                  if (value == '') {
                                                    isLoading = false;

                                                    showToast(
                                                        "L'addresse de livraison est obligatoire.");
                                                    return;
                                                  }
                                                  if (!isUserExists) {
                                                    isLoading = false;

                                                    showToast(
                                                        "Vous n'avez pas de compte.");

                                                    Navigator.pushNamed(
                                                        context, '/signup');
                                                  } else if (isUserExists) {
                                                    isLoading = false;

                                                    Navigator.pushNamed(context,
                                                        '/confirmation_screen');
                                                  }
                                                });
                                              });
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

  void delete(
    ShoppingCartLines lines,
    int index,
  ) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.deleteLine(lines, index));

    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.foodPriceChanged(true));
  }

  Future<void> _verifyUserExistence(int phone) async {
    BlocProvider.of<RegisterBloc>(context)
      ..add(RegisterEvent.isUserCreated(phone))
      ..state.isUserCreatedFailureOrSuccess.fold(
        () => null,
        (either) {
          either.fold(
            (failure) {
              failure.map(
                  serverError: (_) =>
                      showToast("Server failure, try again later."),
                  apiFailure: (e) {
                    BlocProvider.of<RegisterBloc>(context)
                      ..add(RegisterEvent.changeUserStatus(false));

                    setState(() {
                      isUserExists = false;
                    });
                  });
            },
            (success) {
              _saveUserData(
                  success["id"], success["phone"], success["address"]);
              BlocProvider.of<RegisterBloc>(context)
                ..add(RegisterEvent.changeUserStatus(true));
              setState(() {
                isUserExists = true;
              });
            },
          );
        },
      );
  }
}
