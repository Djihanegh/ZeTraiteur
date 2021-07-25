import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/infrastructure/core/pref_manager.dart';
import 'package:ze_traiteur/presentation/components/labeled_text_form_field.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/pages/shoppingcart/your_shopping_cart_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class ConfirmationScreen extends StatefulWidget {
  final String? address;
  final String? phoneNumber;

  const ConfirmationScreen({Key? key, this.address, this.phoneNumber})
      : super(key: key);

  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  void initState() {
    super.initState();

    //phone = Prefs.getString(Prefs.PHONE) ?? "775896545";
    //address = Prefs.getString(Prefs.)
  }

  int phone = 0;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: kColorPrimary,
          centerTitle: true,
          title: Text(
            'Confirmation',
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
                          showToast('');
                        },
                      );
                    },
                  );
                }, child: BlocBuilder<OrderBloc, OrderState>(
                        builder: (context, state) {
                  return Column(
                    children: [
                      Expanded(
                          child: ListView(children: [
                        LabeledTextFormField(
                          title: "Lieu de livraison",
                          enabled: false,
                          initialValue: state.address,
                          hintText: state.address,
                        ),
                        LabeledTextFormField(
                          title: "1er Numero de telephone",
                          enabled: false,
                          keyboardType: TextInputType.phone,
                          initialValue: state.phone.toString(),
                        ),
                        LabeledTextFormField(
                          title: "2eme Numero de telephone",
                          enabled: true,
                          keyboardType: TextInputType.phone,
                        ),
                      ])),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  top: 10, left: 20, right: 20, bottom: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kColorPrimary),
                                //height: 40,
                                width: double.infinity,
                                child: isLoading
                                    ? Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      )
                                    : TextButton(
                                        onPressed: () {
                                          isLoading = false;
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  YourShoppingCartScreen(),
                                            ),
                                          );
                                        },
                                        child: Text("Passer ma commande",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ))),
                              )))
                    ],
                  );
                })))));
  }
}
