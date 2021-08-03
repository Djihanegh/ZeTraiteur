import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/facture.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/lines.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class FactureListItem extends StatefulWidget {
  final Facture lines;
  final int index;
  final int quantity;

  FactureListItem(
      {Key? key,
      required this.lines,
      required this.index,
      required this.quantity})
      : super(key: key);

  @override
  _FactureListItemState createState() => _FactureListItemState();
}

class _FactureListItemState extends State<FactureListItem> {
  List<Food> foods = [];
  List<Food> extras = [];
  double totalCompoFoodPrice = 0.0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    reinitializeData();
    SizeConfig().init(context);
    return BlocProvider.value(
        value: BlocProvider.of<OrderBloc>(context),
        child: BlocListener<OrderBloc, OrderState>(listener:
            (context, orderState) {
          if (orderState.isFoodPriceChanged) {
            reinitializeData();
            rebuild(orderState);
          }
        }, child:
            BlocBuilder<OrderBloc, OrderState>(builder: (context, orderState) {
          return Column(
            children: [
              ListTile(
                title: Text("",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600, fontSize: 16)),
                subtitle: SizedBox(
                  height: 30,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (context, indexx) {
                      return Text(foods[indexx].name ?? "",
                          style: GoogleFonts.lato());
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: kColorPrimary,
                    ),
                    onPressed: () {}),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Quantite : ${widget.quantity}",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                      Text("${totalCompoFoodPrice}" + " DA",
                          style: GoogleFonts.lato()),
                    ],
                  ))
            ],
          );
        })));
  }

  void rebuild(OrderState state) {
    totalCompoFoodPrice = 0.0;
    for (var food
        in state.shoppingCartLines![widget.index].composition!.selectedFoods!) {
      totalCompoFoodPrice = totalCompoFoodPrice + food.price!;
    }

    for (var extra
        in state.shoppingCartLines![widget.index].composition!.extras) {
      totalCompoFoodPrice = totalCompoFoodPrice + extra.price!;
    }

    if (state.shoppingCartLines![widget.index].quantity > 1) {
      setState(() {
        totalCompoFoodPrice = totalCompoFoodPrice * widget.quantity;
      });
    }

    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.priceChanged(totalCompoFoodPrice));
  }

  void getData() {
    for (var food in widget.lines.composition!.selectedFoods!) {
      totalCompoFoodPrice = totalCompoFoodPrice + food.price!;
    }

    for (var extra in widget.lines.composition!.extras) {
      //
      totalCompoFoodPrice = totalCompoFoodPrice + extra.price!;
    }

    if (widget.quantity > 1) {
      setState(() {
        totalCompoFoodPrice = totalCompoFoodPrice * widget.quantity;
      });
    }

    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.priceChanged(totalCompoFoodPrice));
  }

  void reinitializeData() {
    extras = [];
    foods = [];

    extras.addAll(widget.lines.composition!.extras);
    foods.addAll(widget.lines.composition!.selectedFoods!);
    foods.addAll(extras);
  }
}
