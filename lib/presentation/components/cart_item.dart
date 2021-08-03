import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class CartItemWidget extends StatefulWidget {
  final String name;
  final List<Food> foods;
  final List<Food>? extras;

  const CartItemWidget(
      {Key? key, required this.name, required this.foods, this.extras})
      : super(key: key);

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  double totalCompoFoodPrice = 0.0;
  double totalFoodPrice = 0.0;
  double totalExtrasPrice = 0.0;
  double totalCompoExtraPrice = 0.0;

  @override
  void initState() {
    super.initState();

    for (var food in widget.foods) {
      totalCompoFoodPrice = totalCompoFoodPrice + food.price!;
    }
    for (var extra in widget.extras!) {
      totalCompoExtraPrice = totalCompoExtraPrice + extra.price!;
    }
    totalFoodPrice = totalCompoExtraPrice + totalCompoFoodPrice;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(widget.name), Text("")],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: SizeConfig.screenWidth! * 0.6,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: widget.foods.length,
                                    itemBuilder: (context, index) {
                                      // totalCompoFoodPrice = 0.0;
                                      /*   totalCompoFoodPrice =
                                          totalCompoFoodPrice +
                                              widget.foods[index].price!;
                                      totalFoodPrice =
                                          totalFoodPrice + totalCompoFoodPrice;*/

                                      // print(totalCompoPrice);

                                      return Text(widget.foods[index].name!,
                                          style: GoogleFonts.lato());
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return Text(" - ");
                                    },
                                  )),
                              SizedBox(
                                height: 50,
                                child: Text(
                                  "$totalCompoFoodPrice DA",
                                  style: TextStyle(color: Colors.black),
                                ),
                              )
                            ],
                          )),
                    ),
                    widget.extras!.length > 0
                        ? Padding(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: SizedBox(
                                height: 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        height: 50,
                                        width: SizeConfig.screenWidth! * 0.6,
                                        child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: widget.extras!.length,
                                          itemBuilder: (context, index) {
                                            // totalCompoExtraPrice = 0.0;
                                            /* totalCompoExtraPrice =
                                                totalCompoExtraPrice +
                                                    widget
                                                        .extras![index].price!;

                                            totalFoodPrice = totalFoodPrice +
                                                totalCompoExtraPrice;*/

                                            // print(totalCompoPrice);

                                            return Text(
                                                widget.extras![index].name!,
                                                style: GoogleFonts.lato());
                                          },
                                          separatorBuilder:
                                              (BuildContext context,
                                                  int index) {
                                            return Text(" - ");
                                          },
                                        )),
                                    SizedBox(
                                      height: 50,
                                      child: Text(
                                        "$totalCompoExtraPrice DA",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                )),
                          )
                        : SizedBox(
                            height: 50,
                            child: Text(""),
                          )
                  ],
                ))),
        Positioned(
            top: 165,
            left: SizeConfig.screenWidth! * 0.5 / 1.58,
            child: Center(
              child: Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black)),
                child: Text(
                  "$totalFoodPrice DA",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )),
      ],
    );
  }
}
