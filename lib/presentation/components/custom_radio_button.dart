import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ze_traiteur/application/order/order_bloc.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/presentation/utils/constants.dart';

class CustomRadioButton extends StatefulWidget {
  final bool? isActive;
  final int? id;
  final int? index;

  final Food? extra;
  final String? name;

  final Function? onPressed;

  const CustomRadioButton(
      {Key? key,
      this.isActive,
      this.onPressed,
      this.id,
      this.extra,
      this.name,
      this.index})
      : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  bool isActive = false;
  int? id;
  Food? extra;
  String? name;
  int? index;

  @override
  void initState() {
    super.initState();

    setState(() {
      isActive = widget.isActive!;
      id = widget.id;
      extra = widget.extra;
      name = widget.name;
      index = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: BlocProvider.of<OrderBloc>(context),
        child: BlocListener<OrderBloc, OrderState>(listener: (context, state) {
          isActive = state.radioBtnValue;
        }, child: BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  isActive = !isActive;
                });

                widget.onPressed!(isActive, id, extra, name, index);
              },
              child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: isActive ? kColorPrimary : Color(0xFF797A82),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(70)),
                  child: isActive
                      ? Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                                color: isActive
                                    ? kColorPrimary
                                    : Color(0xFF797A82),
                                borderRadius: BorderRadius.circular(70)),
                          ),
                        )
                      : Container()));
        })));
  }
}
