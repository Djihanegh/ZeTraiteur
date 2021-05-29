import 'package:flutter/material.dart';
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
          Padding(
            padding: EdgeInsets.only(top: 20, right: 20),
            child: ListTile(
                title: Text("Lieu de livraison"),
                subtitle: TextField(),
                trailing: Icon(Icons.mode_edit)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, right: 20),
            child: ListTile(
                title: Text("Numero de telephone"),
                subtitle: TextField(),
                trailing: Icon(Icons.mode_edit)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, right: 270),
            child: Text("Repas:"),
          ),
          ListView(children: [
            ListTile(
              title: Text('Commande classique'),
              subtitle: Text('Ingredients'),
              trailing: Icon(Icons.mode_edit),
            )
          ])
        ]));
  }
}
