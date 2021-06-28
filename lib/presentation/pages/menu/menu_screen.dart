import 'package:flutter/material.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/domain/entities/section.dart';
import 'package:ze_traiteur/presentation/components/food_item.dart';
import 'package:ze_traiteur/presentation/components/shopping_cart_button.dart';
import 'package:ze_traiteur/presentation/pages/shoppingcart/shopping_cart_screen.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class MenuScreen extends StatefulWidget {
  final MenuItem menuItem;

  const MenuScreen({Key? key, required this.menuItem}) : super(key: key);
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
  var selectedValue = 'animal';
  int length = 0;
  @override
  void initState() {
    super.initState();

    setState(() {
      length = widget.menuItem.sections!.length;
    });

    print("LEEEEEEEEEEEEEEEEEEEEEGTH$length");

    _tabController = new TabController(
      length: length,
      vsync: this,
      initialIndex: selectedIndex,
    );

    print(widget.menuItem.sections!.length);
  }

  @override
  Widget build(BuildContext context) {
     List<Widget> tabs= List.filled(length , Container());
    
      for( int i=0 ; i<  widget.menuItem.sections!.length ; i++  ){
            
        tabs[i] =   new Container(
              height: 50,
              width: 50,
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                      entreesColor = kColorPrimary;
                      // _tabController?.animateTo(0);
                    });
                  },
                  child: new Container(
                    //color: Colors.blue,
                    height: 60,
                    width: 80,
                    child: new Tab(
                      child: Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                            color: entreesColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
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
       
        
    return SafeArea(
        child: DefaultTabController(
            length: length,
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
                              indicatorColor: Colors.white,
                              labelColor: Colors.yellow,
                              controller: _tabController,
                              isScrollable: true,
                              onTap: (int index) {
                                setState(() {
                                  selectedIndex = index;
                                  _tabController?.animateTo(index);
                                });
                              },
                              tabs: tabs

                              /*new GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = 0;
                                        entreesColor = kColorPrimary;
                                        // _tabController?.animateTo(0);
                                      });
                                    },
                                    child: new Container(
                                      //color: Colors.blue,
                                      height: 60,
                                      width: 80,
                                      child: new Tab(
                                        child: Container(
                                          height: 35,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: entreesColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Center(
                                            child: Text(
                                              widget
                                                  .menuItem.sections![0].name!.substring(0,5),
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                                new GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 1;
                                      platColor = kColorPrimary;

                                      //  _tabController?.animateTo(1);
                                    });
                                  },
                                  child: new Container(
                                    //color: Colors.blue,
                                    width: 120,
                                    height: 70,
                                    child: Tab(
                                        child: new Container(
                                      decoration: BoxDecoration(
                                          color: platColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      height: 35,
                                      width: 100.0,
                                      child: Center(
                                          child: Text(
                                        'Plat Principal',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                    )),
                                  ),
                                ),
                                new GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = 2;
                                        //  _tabController?.animateTo(2);
                                      });
                                    },
                                    child: new Container(
                                      width: 110.0,
                                      child: new Tab(
                                        child: Text(
                                          "Gratin & Grillades",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    )),
                                new GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = 3;
                                        //  _tabController?.animateTo(3);
                                      });
                                    },
                                    child: new Container(
                                      width: 60.0,
                                      child: new Tab(
                                        child: Text(
                                          'Boisson',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    )),*/
                              )),
                      IndexedStack(children: [
                        IndexedStack(
                          children: <Widget>[
                            Visibility(
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: ListView.separated(
                                    physics: ScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: widget
                                        .menuItem.sections![0].foods!.length,
                                    itemBuilder: (BuildContext context, index) {
                                      return FoodItem(
                                          name: widget.menuItem.sections![0]
                                              .foods![index].name!
                                              .substring(0, 2),
                                          image: widget.menuItem.sections![0]
                                              .foods![index].image!,
                                          value: "");
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        height: 10,
                                      );
                                    },
                                  )),
                              maintainState: true,
                              visible: selectedIndex == 0,
                            ),
                          ],
                        )
                      ])
                    ])))));
  }
}
