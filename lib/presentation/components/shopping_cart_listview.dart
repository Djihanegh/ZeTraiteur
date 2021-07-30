import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class ShoppingCartListItem extends StatefulWidget {
  final ShoppingCartLines lines;
  const ShoppingCartListItem({
    Key? key,
    required this.lines,
  }) : super(key: key);

  @override
  _ShoppingCartListItemState createState() => _ShoppingCartListItemState();
}

class _ShoppingCartListItemState extends State<ShoppingCartListItem> {
  List<Food> foods = [];
  List<Food> extras = [];
  double totalCompoFoodPrice = 0.0;

  @override
  void initState() {
    super.initState();

    for (var food in widget.lines.composition!.selectedFoods!) {
      totalCompoFoodPrice = totalCompoFoodPrice + food.price!;
    }

    for (var extra in widget.lines.composition!.extras) {
      totalCompoFoodPrice = totalCompoFoodPrice + extra.price!;
    }
    extras = [];
    foods = [];

    extras.addAll(widget.lines.composition!.extras);
    foods.addAll(widget.lines.composition!.selectedFoods!);
    foods.addAll(extras);

    BlocProvider.of<OrderBloc>(context)
      ..add(OrderEvent.priceChanged(totalCompoFoodPrice));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(widget.lines.composition!.menu!,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 16)),
          subtitle: SizedBox(
              height: 30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: foods.length,
                itemBuilder: (context, indexx) {
                  return Text(foods[indexx].name!, style: GoogleFonts.lato());
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              )),
          trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: kColorPrimary,
            ),
            onPressed: () {
              print("AAAA");
              BlocProvider.of<OrderBloc>(context)
                  .add(OrderEvent.deleteLine(widget.lines));
            },
          ),
        ),
        Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text("$totalCompoFoodPrice" + " DA", style: GoogleFonts.lato())
              ],
            ))
      ],
    );
  }
}
