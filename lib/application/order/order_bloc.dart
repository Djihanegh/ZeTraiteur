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

import '../../domain/core/failures.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderState.initial());

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
        yield* _performFoodChanged(e.foodId);
        //yield state.copyWith(foodId: e.foodId);
      },
      extraChanged: (e) async* {
        yield state.copyWith(extraId: e.extraId);
      },
      numberPhoneChanged: (e) async* {
        print("Helooo");
        print(e.phone);
        yield state.copyWith(phone: e.phone);
      },addressChanged: (e) async* {
           print("ADDRESS");
        print(e.address);
        yield state.copyWith(address: e.address);
      },
      sendOrderToCart: (e) async* {
        yield* _performSendOrderToCart(e.menuId);
      },
      selectFood: (e) async* {
        print("FOOOD");
        print(e.food);
        yield* _performSelectedFood(e.food);
      },
      selectExtra: (e) async* {
        print("Extra");
        yield* _performSelectedExtra(e.extra);
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

    print("STATE LIST");
    print(state.foods);
    yield state.copyWith(createOrderFailureOrSuccess: none(), foods: foodsList);
  }

  Stream<OrderState> _performSendOrderToCart(
    int menuId,
  ) async* {
    Map<int, int> foodsList = state.foods;

    List<int> extraList = state.extras;

    List<int> foods = [];
    foodsList.values.forEach((e) {
      foods.add(e);
    });

    Composition composition = Composition(menuId, foods, extraList);

    Lines line = Lines(1, composition);

    List<Lines> _lines = state.lines!;

    _lines.add(line);

    print("LINES LISTT");
    print(state.lines);

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        lines: _lines,
        hasSentOrderToCart: true,
        foods: {},
        extras: []);

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        lines: _lines,
        hasSentOrderToCart: false,
        foods: {},
        extras: []);
  }

  Stream<OrderState> _performAddExtra(
    int extraId,
  ) async* {
    List<int> extraList = state.extras;

    if (!extraList.contains(extraId)) {
      extraList.add(extraId);
    } else {
      extraList.remove(extraId);
    }
    print("EXTRAS LIST");
    print(state.extras);
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), extras: extraList);
  }
 Stream<OrderState> _performSelectedExtra(
    Food extra,
  ) async* {
    List<Food> extraList = state.selectedExtras;

    if (!extraList.contains(extra)) {
      extraList.add(extra);
    } else {
      extraList.remove(extra);
    }
    print("EXTRAS SELECTED ");
    print(state.selectedExtras);
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedExtras: extraList);
  }

Stream<OrderState> _performSelectedFood(
    Food food,
  ) async* {
    List<Food> foodList = state.selectedFood;

    if (!foodList.contains(food)) {
      foodList.add(food);
    } else {
      foodList.remove(food);
    }
    print("food SELECTED ");
    print(state.selectedFood);
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedFood: foodList);
  }
  Stream<OrderState> _performFoodChanged(
    int foodId,
  ) async* {
    yield state.copyWith(createOrderFailureOrSuccess: none(), foodId: foodId);
  }
}
