import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:ze_traiteur/domain/entities/lines.dart';
import 'package:ze_traiteur/domain/entities/composition.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_lines.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_composition.dart';

import 'package:ze_traiteur/domain/order/i_order_facade.dart';

import '../../domain/core/failures.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final IOrderFacade _orderFacade;

  OrderBloc(
    this._orderFacade,
  ) : super(OrderState.initial());

  @override
  Stream<OrderState> mapEventToState(
    OrderEvent event,
  ) async* {
    yield* event.map(
      addFood: (e) async* {
        yield* _performAddFood(e.foodId, e.index);
      },
      addExtra: (e) async* {
        yield* _performAddExtra(e.extraId);
      },
      foodChanged: (e) async* {
        yield* _performFoodChanged(e.foodId, e.index);
      },
      extraChanged: (e) async* {
        yield state.copyWith(extraId: e.extraId);
      },
      numberPhoneChanged: (e) async* {
        yield state.copyWith(phone: e.phone);
      },
      addressChanged: (e) async* {
        yield state.copyWith(address: e.address);
      },
      sendOrderToCart: (e) async* {
        yield* _performSendOrderToCart(e.menuId);
      },
      sendCompleteOrderToCart: (e) async* {
        yield* _performSendCompleteOrderToCart(e.menu);
      },
      selectFood: (e) async* {
        yield* _performSelectedFood(e.food, e.name);
      },
      selectExtra: (e) async* {
        yield* _performSelectedExtra(e.extra, e.name);
      },
      createOrder: (e) async* {
        yield* _performCreateOrder(e.body, _orderFacade.createOrder);
      },
      priceChanged: (e) async* {
        //  double? price = state.price;

        // price = price! + e.price;

        yield state.copyWith(price: e.price);
      },
    );
  }

  Stream<OrderState> _performAddFood(
    int foodId,
    int index,
  ) async* {
    Map<int, int> foodsList = state.foods;

    print("ADDING FOOD");

    if (foodsList[index] != foodId) {
      foodsList[index] = foodId;

      print("ADDDD FOOD");
      print(foodsList[index]);
    }
    yield state.copyWith(createOrderFailureOrSuccess: none(), foods: foodsList);
  }

  Stream<OrderState> _performSendOrderToCart(
    int menuId,
  ) async* {
    Map<int, int> foodsList = state.foods;

    List<int> extraList = state.extras;
    int quantity = 1;
    List<Lines> _lines = state.lines!;

    List<int> foods = [];
    foodsList.values.forEach((e) {
      foods.add(e);
    });
    print("FOOOOOOOOOOOOOOODS");
    print(foods);

    Composition composition = Composition(menuId, foods, extraList);
    Lines? _line;

    for (Lines line in state.lines!) {
      quantity = line.quantity;

      print("QUANTITYYYY");

      print(quantity);

      print("LINNNNES");
      print(state.lines!);

      if (line.composition == composition) {
        print("EQUUUUUAAL");

         _line = line;
        quantity++;

      

      }
    }

    _lines.remove(_line);
    print("AFTER REMOVE");

    print(_lines);
    print(quantity);

    Lines line = Lines(quantity, composition);

    _lines.add(line);
    print("AFTER ADD");

    print(_lines);

    yield state.copyWith(
        quantity: quantity,
        createOrderFailureOrSuccess: none(),
        lines: _lines,
        hasSentOrderToCart: true,
        foods: foodsList,
        extras: extraList);

    yield state.copyWith(
        quantity: quantity,
        createOrderFailureOrSuccess: none(),
        lines: _lines,
        hasSentOrderToCart: false,
        foods: foodsList,
        extras: extraList);
  }

  Stream<OrderState> _performCreateOrder(
    Map<String, dynamic> body,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {required Map<String, dynamic> body})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    failureOrSuccess = await forwardedCall(body: body);

    yield state.copyWith(
      createOrderFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Stream<OrderState> _performSendCompleteOrderToCart(
    String menu,
  ) async* {
    Map<String, List<Food>> foodsList = state.selectedFood;

    Map<String, List<Food>> extraList = state.selectedExtras;

    List<Food> foods = foodsList[menu]!;

    List<Food> extras = extraList[menu]!;

    ShoppingCartComposition composition =
        ShoppingCartComposition(menu, foods, extras);

    ShoppingCartLines line = ShoppingCartLines(1, composition);

    List<ShoppingCartLines> _lines = state.shoppingCartLines ?? [];

    _lines.add(line);

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentOrderToCart: false,
        selectedFood: foodsList,
        selectedExtras: extraList);
  }

  Stream<OrderState> _performAddExtra(
    int extraId,
  ) async* {
    List<int> extraList = state.extras;

    if (!extraList.contains(extraId)) {
      extraList.add(extraId);
    } else {
      //extraList.remove(extraId);
    }
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), extras: extraList);
  }

  Stream<OrderState> _performSelectedExtra(
    Food extra,
    String name,
  ) async* {
    Map<String, List<Food>> extraList = state.selectedExtras;

    if (!extraList.containsKey(name)) {
      extraList[name] = [];
    }

    List<Food>? food = extraList[name];
    food!.add(extra);

    extraList[name] = food;

    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedExtras: extraList);
  }

  Stream<OrderState> _performSelectedFood(
    Food food,
    String name,
  ) async* {
    Map<String, List<Food>> foodList = state.selectedFood;

    if (!foodList.containsKey(name)) {
      foodList[name] = [];
    }
    List<Food>? _food = foodList[name];
    _food!.add(food);

    foodList[name] = _food;
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedFood: foodList);
  }

  Stream<OrderState> _performFoodChanged(
    int foodId,
    int index,
  ) async* {
    print("FOOOOOOOD IDDS");
    print(foodId);
    print(index);
    // _performAddFood(foodId, index);
    yield state.copyWith(createOrderFailureOrSuccess: none(), foodId: foodId);
  }
}
