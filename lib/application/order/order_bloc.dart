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
        yield* _performSelectedFood(e.food, e.name, e.selectedIndex);
      },
      selectExtra: (e) async* {
        yield* _performSelectedExtra(e.extra, e.name);
      },
      createOrder: (e) async* {
        yield* _performCreateOrder(e.body, _orderFacade.createOrder);
      },
      priceChanged: (e) async* {
        yield state.copyWith(price: e.price);
      },
      deleteLine: (e) async* {
        yield* _performDeleteLine(e.line);
      },
      deliveryFeeChanged: (e) async* {
        yield state.copyWith(deliveryFee: e.deliveryFee);
      },
    );
  }

  Stream<OrderState> _performAddFood(
    int foodId,
    int index,
  ) async* {
    Map<int, int> foodsList = state.foods;

    if (foodsList[index] != foodId) {
      foodsList[index] = foodId;
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

    Composition composition = Composition(menuId, foods, extraList);
    Lines? _line;

    for (Lines line in state.lines!) {
      quantity = line.quantity;

      if (line.composition == composition) {
        _line = line;
        quantity++;
      }
    }

    _lines.remove(_line);

    Lines line = Lines(quantity, composition);

    _lines.add(line);

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

  Stream<OrderState> _performDeleteLine(
    ShoppingCartLines line,
  ) async* {
    List<ShoppingCartLines> _lines = state.shoppingCartLines ?? [];

    if (_lines.contains(line)) {
      _lines.remove(line);
      print(_lines);
    }

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentOrderToCart: false,
        isLineDeleted: true);
    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentOrderToCart: false,
        isLineDeleted: false);
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

    List<Food> extras = extraList[menu] ?? [];

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
      print(extraList);
    } else {
      extraList.remove(extraId);
      print(extraList);
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

      List<Food>? food = extraList[name];
      food!.add(extra);

      extraList[name] = food;
      print(extraList[name]);
    } else {
      if (!extraList[name]!.contains(extra)) {
        extraList[name]!.add(extra);
      } else {
        extraList[name]!.remove(extra);
        print(extraList[name]);
      }
    }

    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedExtras: extraList);
  }

  Stream<OrderState> _performSelectedFood(
      Food food, String name, int selectedIndex) async* {
    Map<String, List<Food>> foodList = state.selectedFood;

    if (!foodList.containsKey(name)) {
      print(name);
      foodList[name] = [];

      List<Food>? _food = foodList[name];
      _food!.add(food);

      foodList[name] = _food;
    } else {
      List<Food>? temp = foodList[name];

      if (temp!.length > selectedIndex) {
        temp[selectedIndex] = food;
      } else {
        temp.add(food);
      }

      foodList[name] = temp;
      print(foodList);
    }
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedFood: foodList);
  }

  Stream<OrderState> _performFoodChanged(
    int foodId,
    int index,
  ) async* {
    yield state.copyWith(createOrderFailureOrSuccess: none(), foodId: foodId);
  }
}
