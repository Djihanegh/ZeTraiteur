import 'package:flutter/material.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class MenuScreen extends StatefulWidget {
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

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(
      length: 4,
      vsync: this,
      initialIndex: selectedIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 4,
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
                      Padding(
                          padding: EdgeInsets.only(right: 15, top: 10),
                          child: Container(
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              height: 60,
                              width: 65,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                  color: kColorPrimary)))
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
                body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        height: 50,
                        width: double.infinity,
                        color: Colors.white,
                        child: Text(
                          "Menu classique",
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
                              tabs: [
                                new GestureDetector(
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
                                              'Entrees',
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
                                    )),
                              ])),
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
                                    itemCount: 6,
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
                                          title: const Text('Lafayette'),
                                          leading: Image.asset(
                                              "assets/images/menu.png"),
                                          trailing: Radio(
                                            value: 'lafayette',
                                            groupValue: selectedValue,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedValue =
                                                    value.toString();
                                              });
                                            },
                                          ),
                                        ),
                                      );
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
                    ]))));
  }
}
