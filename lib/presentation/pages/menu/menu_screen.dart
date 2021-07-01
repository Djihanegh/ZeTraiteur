import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/composition.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/lines.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/domain/entities/section.dart';
import 'package:ze_traiteur/presentation/components/food_item.dart';
import 'package:ze_traiteur/presentation/components/shopping_cart_button.dart';
import 'package:ze_traiteur/presentation/components/show_toast.dart';
import 'package:ze_traiteur/presentation/pages/shoppingcart/shopping_cart_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

import '../../../injection.dart';

class MenuScreen extends StatefulWidget {
  final MenuItem menuItem;
  final List<Food> extras;

  const MenuScreen({Key? key, required this.menuItem, required this.extras})
      : super(key: key);
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  int selectedIndex = 0;
  Color entreesColor = Colors.white;
  Color platColor = Colors.white;
  Color gratinColor = Colors.white;
  Color boissonColor = Colors.white;
  int length = 0;
  int _value = -1;
  int _sectionIndex = 0;
  List<bool> _sectionSelected = List.generate(0, (index) => false);
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

  OrderBloc? _orderBloc;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = List.filled(length + 1, Container());
    int j = widget.menuItem.sections!.length;
    List<Lines> lines =
        List.generate(j, (index) => Lines(0, Composition(0, [], [])));

    for (int i = 0; i < j; i++) {
      tabs[i] = new Container(
          height: 50,
          width: 50,
          child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_sectionSelected[_sectionIndex] == true) {
                    setState(() {
                      selectedIndex = i;
                      _tabController?.animateTo(i);
                      _sectionIndex++;
                    });
                  } else if (_sectionSelected[_sectionIndex - 1] == true) {
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
                        color:
                            Colors.white, // _sectionSelected ? kColorPrimary :
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Text(
                        widget.menuItem.sections![i].name!.substring(0, 5),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              )));
    }

    tabs[j] = new Container(
        height: 50,
        width: 70,
        child: GestureDetector(
            onTap: () {
              setState(() {
                if (_sectionSelected[_sectionIndex] == true) {
                  setState(() {
                    selectedIndex = j;

                    _tabController?.animateTo(j);
                    _sectionIndex++;
                  });
                } else if (_sectionSelected[_sectionIndex - 1] == true) {
                  _sectionIndex--;
                  selectedIndex = j;
                  _tabController?.animateTo(j);
                }
              });
            },
            child: new Container(
              height: 60,
              width: 100,
              child: new Tab(
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white, // _sectionSelected ? kColorPrimary :
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
                      return Container(
                        child: Text("HELLLOOOOO"),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 0)
                : BlocProvider(
                    create: (context) => _orderBloc = getIt<OrderBloc>(),
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
                                apiFailure: (e) => showToast("e.msg"),
                              );
                            },
                            (success) {
                              showToast('post_shared');
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
                            child: ListTile(
                              title: Text(widget.menuItem.sections![i]
                                  .foods![index].name! // TO DO
                                  .substring(0, 6)), // TO DO
                              // TODOOOOOOOOO
                              //leading: Image.network(widget.image),
                              trailing: Radio(
                                activeColor: kColorPrimary,
                                value: index,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = int.parse(value.toString());

                                    foodChanged(i, index);

                                    print("STATE FOODS ");

                                    print(state.foodId);
                                    print(state.foodId);

                                    print(state.foods);
                                    print(state.foodId);

                                    _sectionSelected.insert(
                                        _sectionIndex, true);
                                  });
                                },
                              ),
                            ),
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
            child: ListView.separated(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widget.extras.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    title: Text(widget.extras[index].name! // TO DO
                        ), // TO DO
                    // TODOOOOOOOOO
                    //leading: Image.network(widget.image),
                    trailing: Radio(
                      activeColor: kColorPrimary,
                      value: index,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = int.parse(value.toString());
                         
                          _sectionSelected.insert(_sectionIndex, true);
                        });
                      },
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10,
                );
              },
            )),
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
                              fontSize: 24,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal)),
                        ),
                      ),
                      Container(
                        color: kLightGrey,
                        height: 20,
                      ),
                      Container(
                          height: 50,
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
    _orderBloc!.add(
        OrderEvent.foodChanged(widget.menuItem.sections![i].foods![index].id));
  }
}
