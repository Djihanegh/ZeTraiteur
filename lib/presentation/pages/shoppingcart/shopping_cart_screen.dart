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
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/pages/confirmation/confirmation_screen.dart';
import 'package:ze_traiteur/presentation/pages/signup/sign_up_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class Panier extends StatefulWidget {
  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  //RegisterBloc? _registerBloc;
  static String address = "";
  static String phone = ""; //775896545
  double totalPrice = 0.0;
  int foodIndex = 0;
  double totalCompoPrice = 0.0;
  double totalCompo = 0.0;
  double totalCompoPrices = 0.0;
  String value = "";
  bool isLoading = false;
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

  @override
  Widget build(BuildContext context) {
    List<Food> foods = [];
    List<Food> extras = [];
    List<CityObj> allCities = [];
    List<String> citiesByName = [];
    List<ShoppingCartLines> lines = [];
    int index = 0;

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
                                print("API FAILURE ");
                                BlocProvider.of<RegisterBloc>(context)
                                  ..add(RegisterEvent.changeUserStatus(false));

                                setState(() {
                                  isUserExists = false;
                                });
                              });
                        },
                        (success) {
                          print("SUCCESS");
                          BlocProvider.of<RegisterBloc>(context)
                            ..add(RegisterEvent.changeUserStatus(true));
                          setState(() {
                            print("TRUEE");
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
                        orderState.createOrderFailureOrSuccess.fold(
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
                              builder: (context, orderState) {
                        value = orderState.address;
                        lines = [];
                        lines.addAll(orderState.shoppingCartLines!);

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
                          SizedBox(
                              height: 200,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: lines.length,
                                  itemBuilder: (context, index) {
                                    extras = [];
                                    foods = [];

                                    extras.addAll(
                                        lines[index].composition!.extras);
                                    foods.addAll(lines[index]
                                        .composition!
                                        .selectedFoods!);
                                    foods.addAll(extras);
                                    /*    totalPrice = 0.0;
                                  

                                    totalCompoPrices =
                                        totalCompoPrices + totalCompo;

                                    totalPrice = totalPrice + totalCompoPrices;*/

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
                                                  /*    totalCompoPrice = 0.0;
                                                  totalCompoPrice =
                                                      totalCompoPrice +
                                                          foods[indexx].price!;
                                                  totalCompo = totalCompo +
                                                      totalCompoPrice;*/

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
                                        /* Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(),
                                                Text("$totalPrice" + " DA",
                                                    style: GoogleFonts.lato())
                                              ],
                                            ))*/
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
                                    // height: 40,
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
                                              print("11");

                                              Future.delayed(
                                                  const Duration(seconds: 10),
                                                  () {
                                                setState(() {
                                                  if (value == '') {
                                                    showToast(
                                                        "L'addresse de livraison est obligatoire.");
                                                    return;
                                                  }
                                                  if (!isUserExists) {
                                                    print("YOOOOOOOOOOOOOOOO");
                                                    isLoading = false;

                                                    showToast(
                                                        "Vous n'avez pas de compte.");

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              SignUpScreen(),
                                                        ));

                                                  } else if (isUserExists) {
                                                 
                                                    isLoading = false;

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ConfirmationScreen(),
                                                        ));
                                                  }
                                                  /* if (isUserExists) {
      BlocProvider.of<OrderBloc>(context)
        ..add(OrderEvent.addressChanged(addressEditingController.text));
      BlocProvider.of<OrderBloc>(context)
        ..add(
            OrderEvent.numberPhoneChanged(int.tryParse(value.toString()) ?? 0));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConfirmationScreen(),
          ));
    } else if (!isUserExists) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignUpScreen(),
          ));
    } else {
      print("ELSSSE");
    }*/
                                                });
                                              });
                                              print("AAAA");
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
