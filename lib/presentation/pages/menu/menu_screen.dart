import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ze_traiteur/application/menu/menu_bloc.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/injection.dart';
import 'package:ze_traiteur/presentation/components/custom_radio_button.dart';
import 'package:ze_traiteur/presentation/components/item_shimmer.dart';
import 'package:ze_traiteur/presentation/components/shopping_cart_button.dart';
import 'package:ze_traiteur/presentation/components/show_dialog.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/pages/home/home_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class MenuScreen extends StatefulWidget {
  static String routeName = "/menu";

  final List<int> sectionId;
  final String imageUrl;
  final int sectionLength;
  final String name;
  final List<String> sectionNames;
  final int menuId;

  MenuScreen(
      {Key? key,
      required this.sectionId,
      required this.menuId,
      required this.sectionNames,
      required this.imageUrl,
      required this.sectionLength,
      required this.name})
      : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  int selectedIndex = 0,
      _sectionIndex = 0,
      foodId = 0,
      extraId = 0,
      _offset = 1;

  static int length = 0;
  int numberOfOrder = 0;

  bool _loading = true;
  double scrollOffset = 0.0;

  TabController? _tabController;

  //ScrollController? _scrollController;
  bool _hasReachedEndOfResults = false;
  List<List> foods = [];

  List<bool> _sectionSelected = List.generate(length + 1, (index) => false);

  List<int> radioButtonValues = [];
  List<Food> selectedFood = [], selectedExtra = [];
  Map<int, int> _list = {};
  List extras = [];
  bool isActive = false;

  /*_scrollListener() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      setState(() {
        print("reach the bottom");

        _offset++;
        BlocProvider.of<MenuBloc>(context)
          ..add(
              MenuEvent.getAllFoods(_offset, widget.sectionId[selectedIndex]));
        _loading = true;
      });
    }
    if (_scrollController!.offset <=
            _scrollController!.position.minScrollExtent &&
        !_scrollController!.position.outOfRange) {
      print("reach the top");
    }

    if (_scrollController!.offset != 0.0) {
      scrollOffset = _scrollController!.offset;
    }
  }*/

  @override
  void initState() {
    super.initState();
    length = widget.sectionLength;

    foods = List.generate(length + 1, (index) => []);
    _list = Map<int, int>.fromIterable(foods, key: (e) => 0, value: (e) => 0);
    _sectionSelected = List.generate(length + 1, (index) => false);
    //selectedFood = List.generate(length, (index) => Food("", 1, 0, " ", "", 0.0, 0.0, 0.0));

    radioButtonValues = List.filled(0, -1);

    getFoods();

    getExtras(); //foods[selectedIndex].length +

    //_scrollController = ScrollController();
    //_scrollController!.addListener(_scrollListener);

    _tabController = new TabController(
      length: length + 1,
      vsync: this,
      initialIndex: selectedIndex,
    );

    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.reinitializeExtraAndFood());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<Widget> tabs = List.filled(length + 1, Container());
    int j = length;
    int index = 0;

    for (int i = 0; i < length + 1; i++) {
      tabs[i] = BlocProvider.value(
          value: BlocProvider.of<MenuBloc>(context),
          child: BlocListener<MenuBloc, MenuState>(listener: (context, state) {
            state.foodsFailureOrSuccess.fold(
              () => PostListItemShimmer(),
              (either) {
                either.fold(
                  (failure) {
                    failure.map(
                      serverError: (_) => null,
                      apiFailure: (e) => showToast(e.msg!),
                    );
                  },
                  (success) {
                    if (success['results'].isNotEmpty) {
                      setState(() {
                        if (foods[selectedIndex] != success["results"]) {
                          foods[selectedIndex].clear();
                          foods[selectedIndex].addAll(success['results']);
                        }
                      });
                    }

                    radioButtonValues = List.filled(foods.length, -1);

                    setState(() {
                      _loading = false;
                    });
                  },
                );
              },
            );
            state.extrasFailureOrSuccess.fold(
              () => PostListItemShimmer(),
              (either) {
                either.fold(
                  (failure) {
                    failure.map(
                      serverError: (_) => null,
                      apiFailure: (e) => showToast(e.msg!),
                    );
                  },
                  (success) {
                    if (success['results'].isNotEmpty) {
                      setState(() {
                        if (!extras.contains(success["results"])) {
                          extras.clear();
                          extras.addAll(success['results']);
                        }
                      });
                    }
                    setState(() {
                      _loading = false;
                    });
                  },
                );
              },
            );
          }, child: BlocBuilder<MenuBloc, MenuState>(builder: (context, state) {
            return Container(
                height: 50,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_sectionSelected[selectedIndex] == true) {
                          setState(() {
                            if (foodId != 0) {
                              if (selectedIndex < i + 1) {
                                addFood(foodId, selectedIndex); // TODO
                              }
                            }
                            selectedIndex = i;
                            index = i;
                            _tabController?.animateTo(i);
                            _sectionIndex++;

                            _refresh();
                          });
                        } else if (_sectionSelected[selectedIndex - 1] ==
                            true) {
                          _sectionIndex--;
                          selectedIndex = i;
                          index = i;
                          _tabController?.animateTo(i);

                          _refresh();
                        }
                      });
                    },
                    child: new Container(
                      height: 60,
                      child: new Tab(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: selectedIndex == i
                                  ? kColorPrimary
                                  : Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              widget.sectionNames[i],
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    )));
          })));
    }

    tabs[j] = new Container(
        height: 50,
        width: 70,
        child: GestureDetector(
            onTap: () {
              setState(() {
                if (_sectionSelected[selectedIndex] == true &&
                    selectedIndex <= j + 1) {
                  setState(() {
                    if (foodId != 0) {
                      if (selectedIndex < j + 1) {
                        addFood(foodId, selectedIndex); // TODO
                      }
                    }
                    selectedIndex = j;
                    index = j;
                    _tabController?.animateTo(j);
                    _sectionIndex++;
                  });
                } else if (_sectionSelected[selectedIndex - 1] == true &&
                    _sectionIndex > j) {
                  selectedIndex = j;
                  index = j;
                  _tabController?.animateTo(j);
                }
              });
            },
            child: new Container(
              height: 60,
              width: 80,
              child: new Tab(
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                      color: selectedIndex == j ? kColorPrimary : Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text(
                      "Boisson",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            )));

    List<Visibility> widgets = [];

    for (int i = 0; i < length; i++) {
      widgets.add(Visibility(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: length == 0
                ? CircularProgressIndicator(
                    color: kColorPrimary,
                  )
                : BlocProvider.value(
                    value: BlocProvider.of<MenuBloc>(context),
                    child: BlocListener<MenuBloc, MenuState>(
                        listener: (context, state) {},
                        child: BlocBuilder<MenuBloc, MenuState>(
                            builder: (context, state) {
                          return foods.length > 0
                              ? ListView.separated(
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  //controller: _scrollController,
                                  itemCount: foods[selectedIndex].length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.white,
                                      ),
                                      child: GestureDetector(
                                          onTap: () {},
                                          child: ListTile(
                                            title: Text(foods[selectedIndex]
                                                [index]["name"]),
                                            //leading: Image.network(widget.image),
                                            trailing: Radio(
                                              activeColor: kColorPrimary,
                                              value: index,
                                              groupValue: radioButtonValues[
                                                  selectedIndex],
                                              onChanged: (value) {
                                                setState(() {
                                                  Food food = Food.fromJson(
                                                      foods[selectedIndex]
                                                          [index]);

                                                  selectFood(food, widget.name,
                                                      selectedIndex);

                                                  selectedFood.add(food);
                                                  print(food);

                                                  radioButtonValues[
                                                          selectedIndex] = // i
                                                      int.parse(
                                                          value.toString());
                                                  foodChanged(i, index);
                                                  _sectionSelected[
                                                          selectedIndex] =
                                                      true; // _sectionIndex
                                                });
                                              },
                                            ),
                                          )),
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                )
                              : PostListItemShimmer();
                        })))),
        maintainState: true,
        visible: selectedIndex == i,
      ));
    }

    widgets.insert(
      j,
      Visibility(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: BlocProvider.value(
                value: BlocProvider.of<OrderBloc>(context),
                child: BlocListener<OrderBloc, OrderState>(
                    listener: (context, state) {
                  if (state.hasSentOrderToCart) {
                    showToast("Votre commande est ajoutée au panier");
                    showDialogWidget(
                        "Vous pouvez faire une autre commande en allant vers la page des ",
                        "ou bien valider ta commande dans le panier",
                        " Menus,",
                        HomeScreen(),
                        context);
                  }

                  numberOfOrder = state.numberOfOrder;
                }, child: BlocBuilder<OrderBloc, OrderState>(
                        builder: (context, state) {
                  return ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: SizeConfig.screenHeight!),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10.0,
                            left: 0.0,
                            right: 0.0,
                            bottom: 0.0,
                            child: SizedBox(
                                height: SizeConfig.screenHeight! * 0.3,
                                width: SizeConfig.screenWidth!,
                                child: ListView.separated(
                                    physics: ScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: extras.length,
                                    itemBuilder: (BuildContext context, index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: Colors.white,
                                        ),
                                        child: ListTile(
                                            title: Text(extras[index]["name"]),
                                            // TODO
                                            //leading: Image.network(widget.image),
                                            trailing: CustomRadioButton(
                                                isActive: isActive,
                                                onPressed: _onPressed,
                                                index: numberOfOrder,
                                                id: extras[index]["id"],
                                                extra: Food.fromJson(
                                                    extras[index]),
                                                name: widget.name)),
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        height: 10,
                                      );
                                    })),
                          ),
                          Positioned(
                              top: SizeConfig.screenHeight! * 0.5,
                              left: SizeConfig.screenWidth! * 0.18,
                              right: SizeConfig.screenWidth! * 0.18,
                              bottom: SizeConfig.screenHeight! * 0.41,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: kColorPrimary),
                                  child: TextButton(
                                    onPressed: () {
                                      print("SSSSSS");
                                      print(selectedFood.length);
                                      print("AAAA");
                                      print(length);
                                    if (selectedFood.length < length) {
                                        showToast(
                                            "Veuillez selectionner un plat svp");
                                        setState(() {
                                          for (int i = 0;
                                          i < radioButtonValues.length;
                                          i++) {
                                            radioButtonValues[i] = -1;
                                          }
                                        });
                                        selectedFood.clear();

                                        return;
                                      }else {
                                      numberOfOrderChanged(state);
                                        createOrder(
                                          widget.menuId,
                                          state.numberOfOrder,
                                        );
                                        createCompleteOrder(
                                            widget.name, state.numberOfOrder);
                                      setState(() {
                                        for (int i = 0;
                                        i < radioButtonValues.length;
                                        i++) {
                                          radioButtonValues[i] = -1;
                                        }
                                      });

                                      reinitializeRadioBtnValues();

                                     // reinitializeFoodAndExtra();

                                       selectedFood.clear();
                                     }
                                    },
                                    child: Text(
                                      "Ajouter au panier",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.sp),
                                    ),
                                  ))),
                        ],
                      ));
                })))),
        maintainState: true,
        visible: selectedIndex == j,
      ),
    );

    return SafeArea(
        child: BlocProvider(
            create: (_) => getIt<MenuBloc>(),
            child: BlocListener<MenuBloc, MenuState>(
                listener: (context, state) {
              state.foodsFailureOrSuccess.fold(
                () => PostListItemShimmer(),
                (either) {
                  either.fold(
                    (failure) {
                      failure.map(
                        serverError: (_) => null,
                        apiFailure: (e) => showToast("Failure"),
                      );
                    },
                    (success) {
                      if (_loading) {
                        showToast('Loading...');
                      }
                    },
                  );
                },
              );
            }, child:
                    BlocBuilder<MenuBloc, MenuState>(builder: (context, state) {
              return foods.length > 0
                  ? DefaultTabController(
                      length: length + 1,
                      child: Scaffold(
                          appBar: PreferredSize(
                            preferredSize: Size.fromHeight(100.0),
                            child: AppBar(
                              backgroundColor: Colors.transparent,
                              leading: IconButton(
                                icon:
                                    Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                              actions: [
                                ShoppingCartButton(),
                              ],
                              flexibleSpace: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/menu.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          body: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  height: 50,
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: Text(
                                    widget.name,
                                    style: (TextStyle(
                                        fontFamily: 'Poppins-Regular',
                                        fontSize: 24.sp,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal)),
                                  ),
                                ),
                                Container(
                                  color: kLightGrey,
                                  height: 20.h,
                                ),
                                Container(
                                    height: 50,
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: TabBar(
                                        indicatorColor: Colors.white,
                                        labelColor: Colors.yellow,
                                        controller: _tabController,
                                        isScrollable: true,
                                        onTap: (int index) {
                                          setState(() {
                                            if (_sectionSelected[
                                                    _sectionIndex] ==
                                                true) {
                                              setState(() {
                                                selectedIndex = index;
                                                _tabController
                                                    ?.animateTo(index);
                                              });
                                            }
                                          });
                                        },
                                        tabs: tabs)),
                                IndexedStack(
                                    index: selectedIndex, children: widgets)
                              ]))))
                  : PostListItemShimmer();
            }))));
  }

  void reinitializeFoodAndExtra() {
    BlocProvider.of<OrderBloc>(context)
        .add(OrderEvent.reinitializeExtraAndFood());
  }

  void foodChanged(int i, int index) {
    setState(() {
      foodId = foods[selectedIndex][index]["id"];
    });

    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.foodChanged(foodId, index));
  }

  void reinitializeRadioBtnValues() {
    BlocProvider.of<OrderBloc>(context)
        .add(OrderEvent.reinitializeRadioBtnValues(false));
  }

  void addFood(int i, int index) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.addFood(i, index));
  }

  void addExtra(int i) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.addExtra(i));
  }

  void numberOfOrderChanged(OrderState state) {
    BlocProvider.of<OrderBloc>(context)
        .add(OrderEvent.numberOfOrderChanged(state.numberOfOrder));
  }

  void selectExtra(Food extra, String name, int index) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.selectExtra(name, extra, numberOfOrder));
  }

  void selectFood(Food food, String name, int selectedIndex) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.selectFood(
          name, food, numberOfOrder)); //TODO SELECTEDINDEX
  }

  Future<void> getFoods() async {
    BlocProvider.of<MenuBloc>(context)
      ..add(MenuEvent.getAllFoods(_offset, widget.sectionId[selectedIndex]));

    _loading = true;
  }

  Future<void> getExtras() async {
    BlocProvider.of<MenuBloc>(context)..add(MenuEvent.getAllExtras(_offset));
    _loading = true;
  }

  Future<bool> _refresh() {
    _offset = 1;
    _hasReachedEndOfResults = false;

    BlocProvider.of<MenuBloc>(context)
      ..add(MenuEvent.getAllFoods(_offset, widget.sectionId[selectedIndex]));
    _loading = true;
    return Future.value(true);
  }

  void _onPressed(bool isActive, int i, Food extra, String name, int index) {
    _sectionSelected[selectedIndex] = true;
    selectedExtra.add(extra);
    selectExtra(extra, name, numberOfOrder);
    addExtra(i);
  }

  void createOrder(int menuId, int index) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.sendOrderToCart(menuId, numberOfOrder));
  }

  void createCompleteOrder(String menu, int index) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.sendCompleteOrderToCart(menu, numberOfOrder));
  }
}
