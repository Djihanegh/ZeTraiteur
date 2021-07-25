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

class MenuScreen extends StatefulWidget {
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

  bool _loading = true;
  double scrollOffset = 0.0;

  TabController? _tabController;
  ScrollController? _scrollController; //= ScrollController();
  bool _hasReachedEndOfResults = false;

  List<bool> _sectionSelected = List.generate(length + 1, (index) => false);
  List<int> radioButtonValues = List.filled(2, -1);
  List<Food> selectedFood = [], selectedExtra = [];
  Map<int, int> _list = {};
  List<List> foods = [];
  List extras = [];

  _scrollListener() {
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
  }

  /*void _initScrollListener() {

    _scrollController
      ..addListener(() {
        var triggerFetchMoreSize =
            0.9 * _scrollController.position.maxScrollExtent;

        if (!_loading &&
            !_hasReachedEndOfResults &&
            _scrollController.position.pixels > triggerFetchMoreSize) {
          BlocProvider.of<MenuBloc>(context)
          ..add(
              MenuEvent.getAllFoods(_offset, widget.sectionId[selectedIndex]));
          _loading = true;
        }
      });
  }*/

  @override
  void initState() {
    super.initState();
    // _initScrollListener();
    length = widget.sectionLength;

    foods = List.generate(length + 1, (index) => []);
    _list = Map<int, int>.fromIterable(foods, key: (e) => 0, value: (e) => 0);
    _sectionSelected = List.generate(length, (index) => false);

    getFoods();

    getExtras();

    _scrollController = ScrollController();
    _scrollController!.addListener(_scrollListener);

    _tabController = new TabController(
      length: length + 1,
      vsync: this,
      initialIndex: selectedIndex,
    );
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
    //foods[selectedIndex].clear();
    _offset = 1;
    _hasReachedEndOfResults = false;

    print(widget.sectionId[selectedIndex]);
    BlocProvider.of<MenuBloc>(context)
      ..add(MenuEvent.getAllFoods(_offset, widget.sectionId[selectedIndex]));
    _loading = true;
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Widget> tabs = List.filled(length + 1, Container());
    int j = length;

    for (int i = 0; i < length; i++) {
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
                    print("SUCCCESSSSS  3333");

                    if (success['results'].isNotEmpty) {
                      setState(() {
                        if (!foods[selectedIndex]
                            .contains(success["results"])) {
                          foods[selectedIndex].addAll(success['results']);
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
                    print("SUCCCESSSSS  EXTRAS");

                    if (success['results'].isNotEmpty) {
                      setState(() {
                        if (!extras.contains(success["results"])) {
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
                width: width / 3,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_sectionSelected[_sectionIndex] == true) {
                          setState(() {
                            if (foodId != 0) {
                              if (selectedIndex < i + 1) {
                                addFood(foodId, selectedIndex);
                              }
                            }
                            selectedIndex = i;
                            _tabController?.animateTo(i);
                            _sectionIndex++;

                            _refresh();
                          });
                        } else if (_sectionSelected[_sectionIndex - 1] ==
                            true) {
                          _sectionIndex--;
                          selectedIndex = i;
                          _tabController?.animateTo(i);

                          _refresh();
                        }
                      });
                    },
                    child: new Container(
                      height: 60,
                      width: 80,
                      child: new Tab(
                        child: Container(
                          height: 35,
                          width: 60,
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
                if (_sectionSelected[j - 1] == true) {
                  setState(() {
                    if (foodId != 0) {
                      if (_list[selectedIndex] != foodId) {
                        _list[selectedIndex] = foodId;
                      }
                    }
                    selectedIndex = j;
                    _tabController?.animateTo(j);
                    _sectionIndex++;
                  });
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
                ? CircularProgressIndicator(color: kColorPrimary,)/*ListView.separated(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return ;
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 1)*/
                : BlocProvider.value(
                    value: BlocProvider.of<MenuBloc>(context), //TODO
                    child: BlocListener<MenuBloc, MenuState>(
                        listener: (context, state) {},
                        child: BlocBuilder<MenuBloc, MenuState>(
                            builder: (context, state) {
                          return foods.length > 0
                              ? ListView.separated(
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  controller: _scrollController,
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
                                                        [index]["name"]
                                                    .substring(0, 6) // TO DO
                                                ), // TODO
                                            //leading: Image.network(widget.image),
                                            trailing: Radio(
                                              activeColor: kColorPrimary,
                                              value: index,
                                              groupValue: radioButtonValues[i],
                                              onChanged: (value) {
                                                setState(() {
                                                  Food food = Food.fromJson(
                                                      foods[selectedIndex]
                                                          [index]);

                                                  selectFood(food, widget.name);
                                                  selectedFood.add(food);
                                                  radioButtonValues[i] =
                                                      int.parse(
                                                          value.toString());
                                                  foodChanged(i, index);
                                                  _sectionSelected.insert(
                                                      _sectionIndex, true);
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
                  state.createOrderFailureOrSuccess.fold(
                    () => null,
                    (either) {
                      Navigator.pop(context);
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
                  if (state.hasSentOrderToCart) {
                    showToast("Votre commande est ajoutée au panier");
                    showDialogWidget(
                        "Vous pouvez faire une autre commande en allant vers la page des ",
                        "ou bien valider ta commande dans le panier",
                        " Menus,",
                        HomeScreen(),
                        context);
                  }
                }, child: BlocBuilder<OrderBloc, OrderState>(
                        builder: (context, state) {
                  return ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10.0,
                            left: 0.0,
                            right: 0.0,
                            bottom: 0.0,
                            child: SizedBox(
                                height: height * 0.3,
                                width: MediaQuery.of(context).size.width,
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
                                                isActive: false,
                                                onPressed: _onPressed,
                                                id: extras[index]["id"],
                                                extra: Food.fromJson(
                                                    extras[index]),
                                                name: widget.name // TODO
                                                )),
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
                              top: height * 0.5,
                              left: width * 0.18,
                              right: width * 0.18, // 80
                              bottom: height * 0.41, // 295
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: kColorPrimary),
                                  child: TextButton(
                                    onPressed: () {
                                      createOrder(widget.menuId); // TODO
                                      createCompleteOrder(widget.name); // TODO
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
                      print("SUCCCESSSSS  111");
                      if (_loading) {
                        showToast('Loading...');
                      }

                      //_refresh();

                      setState(() {
                        /* BlocProvider.of<MenuBloc>(context)
                          ..add(MenuEvent.indexChanged(
                              success["results"].length));*/
                      });
                    },
                  );
                },
              );
            }, child: // _loading ? Center(child: CircularProgressIndicator(color: kColorPrimary,),):
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

  void foodChanged(int i, int index) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.foodChanged(foodId));

    setState(() {
      print("FOOOD ID   $foodId");
      foodId = foods[selectedIndex][index]["id"]; // TODO
    });
  }

  void addFood(int i, int index) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.addFood(i, index));
  }

  void addExtra(int i) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.addExtra(i));
  }

  void selectExtra(Food extra, String name) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.selectExtra(name, extra));
  }

  void selectFood(Food food, String name) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.selectFood(name, food));
  }

  /*void extraChanged(int index) {
    BlocProvider.of<OrderBloc>(context)
     ..add(OrderEvent.extraChanged(widget.extras[index].id));   // TODO
  }*/

  void _onPressed(bool isActive, int i, Food extra, String name) {
    selectedExtra.add(extra);
    selectExtra(extra, name);
    print(selectedExtra);
    addExtra(i);
  }

  void createOrder(int id) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.sendOrderToCart(id));
  }

  void createCompleteOrder(String menu) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.sendCompleteOrderToCart(menu));
  }
}
