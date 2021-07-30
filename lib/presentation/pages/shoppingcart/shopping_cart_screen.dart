import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/application/register/register_bloc.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
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
  double totalCompoPrice = 0.0;
  double totalCompo = 0.0;
  double totalCompoPrices = 0.0;
  int deliveryFee = 0;
  String value = "";
  bool isLoading = false;
  List<Food> foods = [];
  List<Food> extras = [];
  int index = 0;

  TextEditingController phoneEditingController =
      TextEditingController(text: phone);
  TextEditingController addressEditingController = TextEditingController(
    text: address,
  );
  bool isUserExists = false;

  @override
  void initState() {
    super.initState();

    phone = Prefs.getString(Prefs.PHONE) ?? "";
  }

  void _saveUserData(int id, String numberPhone) async {
    Prefs.setString(Prefs.PHONE, numberPhone.toString());
    Prefs.setInt(Prefs.ID, id);
  }

  @override
  Widget build(BuildContext context) {
    List<CityObj> allCities = [];
    List<String> citiesByName = [];
    List<ShoppingCartLines> lines = [];
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
                        apiFailure: (e) => showToast(e.msg!),
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
                                BlocProvider.of<RegisterBloc>(context)
                                  ..add(RegisterEvent.changeUserStatus(false));

                                setState(() {
                                  isUserExists = false;
                                });
                              });
                        },
                        (success) {
                          _saveUserData(success["id"], success["phone"]);
                          BlocProvider.of<RegisterBloc>(context)
                            ..add(RegisterEvent.changeUserStatus(true));
                          setState(() {
                            isUserExists = true;
                          });
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
                        if (orderState.isLineDeleted) {
                          if (lines.isNotEmpty) {
                            lines.remove(lines[index]);
                          }
                        }

                        if (orderState.address != "") {
                          deliveryFee = allCities[index].deliveryFee;
                          BlocProvider.of<OrderBloc>(context).add(OrderEvent.deliveryFeeChanged(deliveryFee));
                         // totalPrice =
                           //   totalPrice + allCities[index].deliveryFee;
                        }
                      }, child: BlocBuilder<OrderBloc, OrderState>(
                              builder: (context, orderState) {
                        value = orderState.address;
                        lines = [];
                        lines.addAll(orderState.shoppingCartLines ?? []);
                       
                        totalPrice = 0.0;

                        if (lines.isNotEmpty) {
                          print("LINES");
                          for (var line in lines) {
                            totalCompo = 0.0;
                            extras = [];
                            foods = [];
                            extras.addAll(lines[index].composition!.extras);
                            foods.addAll(
                                lines[index].composition!.selectedFoods!);
                            foods.addAll(extras);

                            int i = 0;
                            while (i < foods.length) {
                              totalCompo = totalCompo + foods[i].price!;
                              i++;
                            }

                            totalPrice =
                                totalPrice + totalCompo; // ADD DELIVERY FEE
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
                                          });
                                        },
                                      )))),
                          LabeledTextFormField(
                              controller: phoneEditingController,
                              title: "Numero de telephone",
                              enabled: true,
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                phone = value;
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
                          lines.length > 0
                              ? SizedBox(
                                  height: 200,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: lines.length,
                                      itemBuilder: (context, index) {
                                        return ShoppingCartListItem(
                                            lines: lines[index]);
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
                              // lines.length > 0
                              //  ? foods[index].deliveryFee != null
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
                                          orderState.deliveryFee.toString() +
                                              "DA",
                                          style: GoogleFonts.lato(fontSize: 16))
                                    ],
                                  )),
                              //   : Container()
                              //: Container(),
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
                                                  orderState.phone);

                                              Future.delayed(
                                                  const Duration(seconds: 10),
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

  Future<void> _verifyUserExistence(int phone) async {
    BlocProvider.of<RegisterBloc>(context)
      ..add(RegisterEvent.isUserCreated(phone));
  }
}
