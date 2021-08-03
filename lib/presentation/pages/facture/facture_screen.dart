import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/facture.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
import 'package:ze_traiteur/infrastructure/core/pref_manager.dart';
import 'package:ze_traiteur/presentation/components/facture_list_view_item.dart';
import 'package:ze_traiteur/presentation/components/shopping_cart_listview.dart';
import 'package:ze_traiteur/presentation/utils/app_utils.dart';
import '../../utils/size_config.dart';
import '../../utils/constants.dart';

class FactureScreen extends StatefulWidget {
  static String routeName = "/facture";

  final Map<String, dynamic> body;

  const FactureScreen({Key? key, required this.body}) : super(key: key);

  @override
  _FactureScreenState createState() => _FactureScreenState();
}

class _FactureScreenState extends State<FactureScreen> {
  String _phone = "";
  String _address = "";

  @override
  void initState() {
    _phone = Prefs.getString(Prefs.PHONE) ?? "";
    _address = Prefs.getString(Prefs.ADDRESS) ?? "";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kColorPrimary,
          toolbarHeight: SizeConfig.screenHeight! * 0.20,
          title: Text(
            'ZeTraiteur',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: Colors.white, letterSpacing: .5, fontSize: 20),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(120),
            ),
          ),
        ),
        body: BlocProvider.value(
            value: BlocProvider.of<OrderBloc>(context),
            child: BlocListener<OrderBloc, OrderState>(
                listener: (context, state) {},
                child: BlocBuilder<OrderBloc, OrderState>(
                    builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.screenWidth! * 0.090,
                              right: SizeConfig.screenWidth! * 0.2),
                          child: Container(
                              child: Text(
                            'Details de la commande :',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: .5,
                                  fontSize: 20),
                            ),
                          ))),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.090,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'ID :',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text(widget.body["number"] ?? "")
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'Date :',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text(
                                  '${AppUtils.dateToFormattedDate(widget.body["created_at"] ?? "", true)} \n${'à '}${AppUtils.dateToHourMinute(widget.body["created_at"] ?? "")}'),

                              // Text(widget.body["created_at"] ?? "")
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'Numero de telephone:',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text(_phone)
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'Status :',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text(widget.body["status"] ?? "")
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'Frais de livraison :',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text("200 DA")
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'Lieu de livraison:',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text(_address)
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'Prix total:',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text("400 DA")
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                'La commande :',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.grey[600]!.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                      fontSize: 16),
                                ),
                              )),
                              Text("")
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.090,
                              top: SizeConfig.screenWidth! * 0.060,
                              right: SizeConfig.screenWidth! * 0.090),
                          child: SizedBox(
                              height: 20,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: widget.body["lines"].length,
                                  itemBuilder: (context, indexx) {
                                  /*  Facture line = Facture.fromJson(
                                        widget.body["lines"][indexx]);*/
                                    return /*FactureListItem(
                                      quantity:
                                          widget.body["lines"][indexx].quantity,
                                      key: ValueKey(indexx),
                                      index: indexx,
                                      lines: line,
                                      /* widget.body["lines"][indexx]
                                              ["composition"]
                                          ["selected_foods_list"],*/
                                    );*/ Text("Hello");
                                  }))),
                    ],
                  );
                }))));
  }
}
