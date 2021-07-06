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

import 'package:ze_traiteur/domain/register/i_register_facade.dart';

import '../../domain/core/failures.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
    final IRegisterFacade _registerFacade;

  OrderBloc(this._registerFacade) : super(OrderState.initial());

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
      },
      extraChanged: (e) async* {
        yield state.copyWith(extraId: e.extraId);
      },
      numberPhoneChanged: (e) async* {
        yield state.copyWith(phone: e.phone);
      },addressChanged: (e) async* {
        yield state.copyWith(address: e.address);
      },
      sendOrderToCart: (e) async* {
        yield* _performSendOrderToCart(e.menuId);
      },
      sendCompleteOrderToCart: (e) async* {
        yield* _performSendCompleteOrderToCart(e.menu);
      },
      selectFood: (e) async* {
        yield* _performSelectedFood(e.food,e.name);
      },
      selectExtra: (e) async* {
        yield* _performSelectedExtra(e.extra,e.name);
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

    List<int> foods = [];
    foodsList.values.forEach((e) {
      foods.add(e);
    });

    Composition composition = Composition(menuId, foods, extraList);

    Lines line = Lines(1, composition);

    List<Lines> _lines = state.lines!;

    _lines.add(line);

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

  Stream<OrderState> _performSendCompleteOrderToCart(
    String menu,
  ) async* {
    Map<String, List<Food>> foodsList = state.selectedFood;

    Map<String, List<Food>> extraList = state.selectedExtras;

    List<Food>? foods = foodsList[menu];

    List<Food>? extras = extraList[menu];


    ShoppingCartComposition composition = ShoppingCartComposition(menu, foods!, extras!);

    ShoppingCartLines line = ShoppingCartLines(1, composition);

    List<ShoppingCartLines> _lines = state.shoppingCartLines!;

    _lines.add(line);

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentOrderToCart: true,
        selectedFood: {},
        selectedExtras:  {});

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentOrderToCart: false,
        selectedFood: {},
        selectedExtras:  {});
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
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), extras: extraList);
  }


 Stream<OrderState> _performSelectedExtra(
    Food extra,
    String name,
  ) async* {
   Map<String, List<Food>>  extraList = state.selectedExtras;

       if (!extraList.containsKey(name)) {
      extraList[name] = [];
       }
   
      List<Food>? food =  extraList[name];
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
       List<Food>? _food =  foodList[name];
      _food!.add(food);

      foodList[name] = _food; 
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedFood: foodList);
  }


  Stream<OrderState> _performFoodChanged(
    int foodId,
  ) async* {
    yield state.copyWith(createOrderFailureOrSuccess: none(), foodId: foodId);
  }

  
}
