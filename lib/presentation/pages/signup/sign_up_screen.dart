import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ze_traiteur/presentation/components/custom_button.dart';
import 'package:ze_traiteur/presentation/components/labeled_text_form_field.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstNameLastNameController =
  TextEditingController(text: "");
  TextEditingController emailAddressController = TextEditingController(
    text: "",
  );
  TextEditingController phoneNumberController = TextEditingController(
    text: "",
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: kColorPrimary,
      ),

        body: SafeArea(
        child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(

            child: Center(
      child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
                height: size.height * 0.5,
                width: size.width * 0.7,
                margin: const EdgeInsets.only(
                    bottom: 6.0, top: 6, left: 6, right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    LabeledTextFormField(
                        controller: firstNameLastNameController,
                        hintText: "Nom et prenom*",
                        enabled: true,
                        title: "",
                        onChanged: (value) {}),
                    LabeledTextFormField(
                        controller: emailAddressController,
                        hintText: "Addresse e-mail",
                        enabled: true,
                        title: "",
                        onChanged: (value) {}),
                    LabeledTextFormField(
                        controller: phoneNumberController,
                        title: "",
                        enabled: true,
                        keyboardType: TextInputType.phone,
                        hintText: "Numero de telephone*",
                        onChanged: (value) {}),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: CustomButton(
                        titleColor: kColorPrimary,
                        title: "S'inscrire",
                        onPressed: () {
                        },
                      ),
                    )
                  ],
                )),
          ),
    )))));}
    )));
  }
}
