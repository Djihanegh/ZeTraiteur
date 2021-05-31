import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/presentation/components/labeled_text_form_field.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class Panier extends StatefulWidget {
  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
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
            'Panier',
            style: GoogleFonts.lato(color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: ListView(children: [
          LabeledTextFormField(
            title: "Lieu de livraison",
            enabled: true,
          ),
          LabeledTextFormField(
            title: "Numero de telephone",
            enabled: true,
            keyboardType: TextInputType.phone,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 18, bottom: 10),
            child: Text("Repas:",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400, fontSize: 16)),
          ),
          SizedBox(
              height: 200,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text('Commande classique',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w600, fontSize: 16)),
                          subtitle:
                              Text('Ingredients', style: GoogleFonts.lato()),
                          trailing: Icon(
                            Icons.mode_edit,
                            color: kColorPrimary,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Text("800 DA ", style: GoogleFonts.lato())
                              ],
                            ))
                      ],
                    );
                  })),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 18, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sous total:",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                    Text("160" + "DA", style: GoogleFonts.lato(fontSize: 16))
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, left: 18, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Frais de service:",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                      Text("160" + "DA", style: GoogleFonts.lato(fontSize: 16))
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 20, left: 18, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Frais de livraison:",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                      Text("160" + "DA", style: GoogleFonts.lato(fontSize: 16))
                    ],
                  )),
              Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 18, right: 20, bottom: 10),
                  child: Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                              width: 2.0, color: Colors.grey.withOpacity(0.5)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOTAL:",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "1600" + "DA",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ))),
              Padding(
                  padding:
                      EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kColorPrimary),
                    height: 40,
                    width: double.infinity,
                    child: TextButton(
                        onPressed: null,
                        child: Text("Passer ma commande",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ))),
                  ))
            ],
          )
        ])));
  }
}