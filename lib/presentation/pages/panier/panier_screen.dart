import 'package:flutter/material.dart';
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
          backgroundColor: kColorPrimary,
          centerTitle: true,
          title: Text(
            'Panier',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
            padding: EdgeInsets.only(top: 20, right: 290),
            child: Text("Repas:"),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text('Commande classique'),
                          subtitle: Text('Ingredients'),
                          trailing: Icon(
                            Icons.mode_edit,
                            color: kColorPrimary,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [SizedBox(), Text("800 DA ")],
                            ))
                      ],
                    );
                  })),
          Column(
            children: [
              Row(
                children: [],
              ),
              Row(
                children: [],
              ),
              Row(
                children: [],
              ),
              Row(
                children: [],
              )
            ],
          )
        ]));
  }
}
