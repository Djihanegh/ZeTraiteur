import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/register/register_bloc.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';
import 'package:ze_traiteur/infrastructure/core/pref_manager.dart';
import 'package:ze_traiteur/presentation/components/labeled_text_form_field.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/pages/shoppingcart/shopping_cart_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = "/signup";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<CityObj> allCities = [];
  List<String> citiesByName = [];
  String value = "Votre addresse";
  int id = 0;
  String errorMessage = "Error";
  bool isFailure = false;
  bool isRegistered = false;
  bool isLoading = false;
  final page = Panier();
  bool isLaunched = false;
  String lastName = "";

  TextEditingController lastNameController = TextEditingController(text: "");
  TextEditingController firstNameController = TextEditingController(text: "");

  TextEditingController emailAddressController = TextEditingController(
    text: "",
  );
  TextEditingController phoneNumberController = TextEditingController(
    text: "",
  );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kColorPrimary,
        ),
        body: SafeArea(child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                      child: Center(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  top: 30, bottom: 10, left: 10, right: 10),
                              child: BlocProvider.value(
                                  value: BlocProvider.of<RegisterBloc>(context)
                                    ..add(RegisterEvent.getCities(1)),
                                  child:
                                      BlocListener<RegisterBloc, RegisterState>(
                                          listener: (context, state) {
                                    state.getCitiesFailureOrSuccess
                                        .fold(() => null, (either) {
                                      either.fold((failure) {
                                        failure.map(
                                          serverError: (_) => null,
                                          apiFailure: (e) => showToast(e.msg!),
                                        );
                                      }, (success) {
                                        allCities = success;
                                      });
                                    });

                                    state.createUserFailureOrSuccess
                                        .fold(() => null, (either) {
                                      either.fold((failure) {
                                        failure.map(
                                            serverError: (_) => null,
                                            apiFailure: (e) =>
                                                {errorMessage = e.msg!});

                                        BlocProvider.of<RegisterBloc>(context)
                                          ..add(RegisterEvent.isFailure(
                                              errorMessage));
                                        isLoading = false;
                                      }, (success) {
                                        isLoading = false;

                                        _saveUserData(state, success["id"]);

                                        if (!isLaunched) {
                                          showToast("Inscription reussie !");
                                          Navigator.pop(context);
                                          Navigator.of(context).pushNamed(
                                            '/confirmation_screen',
                                          );

                                          isLaunched = true;
                                        }

                                        isRegistered = true;
                                      });
                                    });
                                  }, child: BlocBuilder<RegisterBloc,
                                                  RegisterState>(
                                              builder: (context, state) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: Container(
                                          height:
                                              SizeConfig.screenHeight! * 0.7,
                                          width: SizeConfig.screenWidth! * 0.7,
                                          margin: const EdgeInsets.only(
                                              bottom: 6.0,
                                              top: 6,
                                              left: 6,
                                              right: 6),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset:
                                                    Offset(0.0, 1.0), //(x,y)
                                                blurRadius: 6.0,
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            children: [
                                              LabeledTextFormField(
                                                  controller:
                                                      lastNameController,
                                                  hintText: "Nom*",
                                                  enabled: true,
                                                  title: "",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      lastName = value;
                                                    });

                                                    BlocProvider.of<
                                                        RegisterBloc>(context)
                                                      ..add(RegisterEvent
                                                          .lastNameChanged(
                                                              lastName));
                                                  }),
                                              LabeledTextFormField(
                                                  controller:
                                                      firstNameController,
                                                  hintText: "Prenom*",
                                                  enabled: true,
                                                  title: "",
                                                  onChanged: (value) {
                                                    print(value);

                                                    BlocProvider.of<
                                                        RegisterBloc>(context)
                                                      ..add(RegisterEvent
                                                          .nameChanged(value));
                                                  }),
                                              LabeledTextFormField(
                                                  controller:
                                                      emailAddressController,
                                                  hintText: "Addresse e-mail",
                                                  enabled: true,
                                                  title: "",
                                                  onChanged: (value) {
                                                    print(value);

                                                    BlocProvider.of<
                                                        RegisterBloc>(context)
                                                      ..add(RegisterEvent
                                                          .emailAddressChanged(
                                                              value));
                                                  }),
                                              LabeledTextFormField(
                                                  controller:
                                                      phoneNumberController,
                                                  title: "",
                                                  enabled: true,
                                                  keyboardType:
                                                      TextInputType.phone,
                                                  hintText:
                                                      "Numero de telephone*",
                                                  onChanged: (value) {
                                                    BlocProvider.of<
                                                        RegisterBloc>(context)
                                                      ..add(RegisterEvent
                                                          .numberPhoneChanged(
                                                              int.parse(
                                                                  value)));
                                                  }),
                                              Container(
                                                  width: double.infinity,
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                          child: ButtonTheme(
                                                              alignedDropdown:
                                                                  true,
                                                              child:
                                                                  new DropdownButton<
                                                                      CityObj>(
                                                                hint: Text(
                                                                  value,
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2,
                                                                ),
                                                                items: allCities
                                                                        .isNotEmpty
                                                                    ? allCities.map(
                                                                        (value) {
                                                                        return new DropdownMenuItem<
                                                                            CityObj>(
                                                                          value:
                                                                              value,
                                                                          child:
                                                                              new Text(value.name),
                                                                        );
                                                                      }).toList()
                                                                    : <CityObj>[]
                                                                        .map(
                                                                            (value) {
                                                                        return new DropdownMenuItem<
                                                                            CityObj>(
                                                                          value:
                                                                              value,
                                                                          child:
                                                                              new Text(value.name),
                                                                        );
                                                                      }).toList(),
                                                                onChanged:
                                                                    (vl) {
                                                                  setState(() {
                                                                    value = vl!
                                                                        .name;
                                                                    id = vl.id;
                                                                    BlocProvider.of<
                                                                            RegisterBloc>(
                                                                        context)
                                                                      ..add(RegisterEvent
                                                                          .addressChanged(
                                                                              vl.name));
                                                                  });
                                                                },
                                                              )))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20,
                                                      right: 20,
                                                      top: 20),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: kColorPrimary),
                                                    width: double.infinity,
                                                    child: isLoading
                                                        ? Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )
                                                        : TextButton(
                                                            onPressed: () {
                                                              isLoading = true;
                                                              _pressed();
                                                            },
                                                            child: Text(
                                                                "S'inscrire",
                                                                style:
                                                                    GoogleFonts
                                                                        .lato(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 20,
                                                                ))),
                                                  )),
                                            ],
                                          )),
                                    );
                                  }))))))));
        })));
  }

  void _pressed() {
    isLoading = true;

    BlocProvider.of<RegisterBloc>(context)
      ..add(RegisterEvent.createUser(1))
      ..state.createUserFailureOrSuccess.fold(() => null, (either) {
        either.fold((failure) {
          failure.map(
            serverError: (_) => null,
            apiFailure: (e) => {
              if (errorMessage != "Error")
                {
                  if (errorMessage ==
                      '{"phone":["Client with this phone already exists."]}')
                    {
                      errorMessage = "Numero de telephone existe deja.",
                    },
                  isLoading = false,
                  showToast(errorMessage),
                }
            },
          );
        }, (success) {
          isLoading = false;
        });
      });

    if (errorMessage != "Error") {}
  }

  void _saveUserData(RegisterState state, int id) async {
    Prefs.setString(Prefs.PHONE, state.phone.toString());
    Prefs.setString(Prefs.ADDRESS, state.address);
    Prefs.setInt(Prefs.ID, id);
  }
}
