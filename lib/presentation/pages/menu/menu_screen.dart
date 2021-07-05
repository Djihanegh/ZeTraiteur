import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/presentation/components/custom_radio_button.dart';
import 'package:ze_traiteur/presentation/components/shopping_cart_button.dart';
import 'package:ze_traiteur/presentation/components/show_dialog.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MenuScreen extends StatefulWidget {
  final MenuItem menuItem;
  final List<Food> extras;

  const MenuScreen({Key? key, required this.menuItem, required this.extras})
      : super(key: key);
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  int selectedIndex = 0;
  int _sectionIndex = 0;
  int foodId = 0;
  int extraId = 0;
  static int length = 0;

  TabController? _tabController;

  List<bool> _sectionSelected = List.generate(length + 1, (index) => false);
  List<int> radioButtonValues = List.filled(2, -1);
  List<Food> selectedFood = [];
  List<Food> selectedExtra = [];

  Map<int, int>? _list;

  @override
  void initState() {
    super.initState();

    setState(() {
      length = widget.menuItem.sections!.length;
    });
    _sectionSelected = List.generate(length, (index) => false);

    _tabController = new TabController(
      length: length + 1,
      vsync: this,
      initialIndex: selectedIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Widget> tabs = List.filled(length + 1, Container());
    int j = widget.menuItem.sections!.length;

    for (int i = 0; i < j; i++) {
      tabs[i] = BlocProvider.value(
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
          }, child:
                  BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
            _list = state.foods;
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
                          });
                        } else if (_sectionSelected[_sectionIndex - 1] ==
                            true) {
                          _sectionIndex--;
                          selectedIndex = i;
                          _tabController?.animateTo(i);
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
                              color: Colors
                                  .white, // _sectionSelected ? kColorPrimary :
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              widget.menuItem.sections![i].name!
                                  .substring(0, 5),
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
                      if (_list![selectedIndex] != foodId) {
                        _list![selectedIndex] = foodId;
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
                      color: Colors.white,
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

    for (int i = 0; i < widget.menuItem.sections!.length; i++) {
      widgets.add(Visibility(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: widget.menuItem.sections!.isEmpty
                ? ListView.separated(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return Container();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 0)
                : BlocProvider.value(
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
                    }, child: BlocBuilder<OrderBloc, OrderState>(
                            builder: (context, state) {
                      return ListView.separated(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: widget.menuItem.sections![i].foods!.length,
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
                                  title: Text(widget.menuItem.sections![i]
                                      .foods![index].name! // TO DO
                                      .substring(0, 6)), // TO DO
                                  // TODOOOOOOOOO
                                  //leading: Image.network(widget.image),
                                  trailing: Radio(
                                    activeColor: kColorPrimary,
                                    value: index,
                                    groupValue: radioButtonValues[i],
                                    onChanged: (value) {
                                      setState(() {
                                        selectFood(
                                            widget.menuItem.sections![i]
                                                .foods![index],
                                            widget.menuItem.name!);
                                        // selectedFood.add(widget.menuItem
                                        //  .sections![i].foods![index]);
                                        print(selectedFood);
                                        radioButtonValues[i] =
                                            int.parse(value.toString());
                                        foodChanged(i, index);
                                        _sectionSelected.insert(
                                            _sectionIndex, true);
                                      });
                                    },
                                  ),
                                )),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                      );
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
                value: BlocProvider.of<OrderBloc>(
                    context), //BlocProvider.of<OrderBloc>(context),
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
                                    itemCount: widget.extras.length,
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
                                            title: Text(widget.extras[index]
                                                    .name! // TO DO
                                                ), // TO DO
                                            // TODOOOOOOOOO
                                            //leading: Image.network(widget.image),
                                            trailing: CustomRadioButton(
                                                isActive: false,
                                                onPressed: _onPressed,
                                                id: widget.extras[index].id,
                                                extra: widget.extras[index])),
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
                                      createOrder(widget.menuItem.id);
                                    },
                                    child: Text(
                                      "Ajouter au panier",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.sp),
                                    ),
                                  ))),
                          /* bottom: 10,
                            left: 0,
                            right: 0,
                            top: height, */
                        ],
                      ));
                })))),
        maintainState: true,
        visible: selectedIndex == j,
      ),
    );

    return SafeArea(
        child: DefaultTabController(
            length: length + 1,
            child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(100.0),
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
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
                          widget.menuItem.name!,
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
                          width: width,
                          color: Colors.white,
                          child: TabBar(
                              //physics: NeverScrollableScrollPhysics(),
                              indicatorColor: Colors.white,
                              labelColor: Colors.yellow,
                              controller: _tabController,
                              isScrollable: true,
                              onTap: (int index) {
                                setState(() {
                                  if (_sectionSelected[_sectionIndex] == true) {
                                    setState(() {
                                      selectedIndex = index;
                                      _tabController?.animateTo(index);
                                    });
                                  }
                                });
                              },
                              tabs: tabs)),
                      IndexedStack(index: selectedIndex, children: widgets)
                    ])))));
  }

  void foodChanged(int i, int index) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.foodChanged(foodId));

    setState(() {
      foodId = widget.menuItem.sections![i].foods![index].id;
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

  void extraChanged(int index) {
    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.extraChanged(widget.extras[index].id));
  }

  void _onPressed(bool isActive, int i, Food extra, String name) {
    selectedExtra.add(extra);
    selectExtra(extra, name);
    print(selectedExtra);
    addExtra(i);
  }

  void createOrder(int id) {
    BlocProvider.of<OrderBloc>(context)..add(OrderEvent.sendOrderToCart(id));
  }
}
