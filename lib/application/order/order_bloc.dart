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
        yield* _performSendCompleteOrderToCart(e.menu, e.index);
      },
      selectFood: (e) async* {
        yield* _performSelectedFood(e.food, e.name, e.selectedIndex);
      },
      selectExtra: (e) async* {
        yield* _performSelectedExtra(e.extra, e.name, e.index);
      },
      createOrder: (e) async* {
        yield* _performCreateOrder(e.body, _orderFacade.createOrder);
      },
      priceChanged: (e) async* {
        yield state.copyWith(price: e.price);
      },
      deleteLine: (e) async* {
        yield* _performDeleteLine(e.shoppingCartLine, e.index);
      },
      deliveryFeeChanged: (e) async* {
        yield state.copyWith(deliveryFee: e.deliveryFee);
      },
      numberOfOrderChanged: (e) async* {
        int numberOfOrder = state.numberOfOrder;
        numberOfOrder++;
        yield state.copyWith(numberOfOrder: numberOfOrder);
      },
      reinitializeExtraAndFood: (e) async* {
        yield state.copyWith(
            selectedFood: {}, selectedExtras: {}, extras: [], foods: {});
      },
      reinitializeRadioBtnValues: (e) async* {
        yield state.copyWith(radioBtnValue: e.value);
      },
      foodPriceChanged: (e) async* {
        yield state.copyWith(isFoodPriceChanged: e.value);
        yield state.copyWith(isFoodPriceChanged: false);
      },
    );
  }

  Stream<OrderState> _performDeleteLine(
    ShoppingCartLines shoppingCartLine,
    //Lines line,
    int index,
  ) async* {
    Lines? line;
    List<ShoppingCartLines> _lines = state.shoppingCartLines ?? [];

    List<Lines> lines = state.lines ?? [];
    int quantity = 1;
    Lines? lineToBeRemoved;
    ShoppingCartLines? cartLines;
    Lines? cartLine;

    /* _lines.remove(_lines[index]);
    line.remove(line[index]);*/

    print(state.shoppingCartLines);
    print(state.lines);
    if (_lines.contains(shoppingCartLine)) {
      if (shoppingCartLine.quantity > 1) {
        quantity = shoppingCartLine.quantity;
        quantity--;
        cartLines = shoppingCartLine;

        ShoppingCartLines toAdd =
            ShoppingCartLines(quantity, cartLines.composition);
        _lines.remove(shoppingCartLine);

        _lines.add(toAdd);
      } else if (shoppingCartLine.quantity == 1) {
        _lines.remove(shoppingCartLine);
      }
    }
    if (lines.contains(lines[index])) {
      line = lines[index];

      if (line.quantity > 1) {
        quantity = line.quantity;
        quantity--;
        cartLine = line;

        Lines toAdd = Lines(quantity, cartLine.composition);
        lines.remove(line);
        lines.add(toAdd);
      } else if (line.quantity == 1) {
        lines.remove(line);
      }
    }

    print("AFTER DELETE");
    print(_lines);
    print("AFTER DELETE 22222222222222222");
    print(line);

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        lines: lines,
        isLineDeleted: true,
        indexOfLine: index);

    yield state.copyWith(
        lines: lines,
        indexOfLine: index,
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentOrderToCart: false,
        isLineDeleted: false);
  }

  Stream<OrderState> _performAddFood(
    int foodId,
    int index,
  ) async* {
    Map<int, int> foodsList = state.foods;

    print("FOOOOD ID");
    print(foodId);
    print(index);
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

    print("SEND ORDER TO CART ");
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
    int index,
  ) async* {
    Map<int, List<Food>> foodsList = state.selectedFood;


    Map<int, List<Food>> extraList = state.selectedExtras;

    int quantity = 1;

    List<Food> foods = foodsList[index] ?? [];
    List<Food> listExtra = extraList[index] ?? [];

    ShoppingCartComposition composition =
        ShoppingCartComposition(menu, foods, listExtra);

    ShoppingCartLines? _toBeRemoved;
    List<ShoppingCartLines> _lines = state.shoppingCartLines ?? [];

    for (ShoppingCartLines line in _lines) {
      print(line.quantity);

      if (line.composition == composition) {
        quantity = line.quantity;
        _toBeRemoved = line;
        quantity++;
      }
    }
    if (_lines.isNotEmpty) {
      _lines.remove(_toBeRemoved);
      print("AFTER DELETE");
      print(_lines);
    }

    ShoppingCartLines lineToAdd = ShoppingCartLines(quantity, composition);
    _lines.add(lineToAdd);

    print("SEND COMPLETE ORDER TO CART ");
    print(_lines);

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentCompleteOrderToCart: true,
        selectedFood: foodsList,
        selectedExtras: extraList);

    yield state.copyWith(
        createOrderFailureOrSuccess: none(),
        shoppingCartLines: _lines,
        hasSentCompleteOrderToCart: false,
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
      extraList.remove(extraId);
    }
    yield state.copyWith(
        createOrderFailureOrSuccess: none(), extras: extraList);
  }

  Stream<OrderState> _performSelectedExtra(
    Food extra,
    String name,
    int index,
  ) async* {
    Map<int, List<Food>> extraList = state.selectedExtras;

    List<Food> _food = extraList[index] ?? [];
    Food? toBeRemoved;

    if (_food.isNotEmpty) {
      for (var __food in _food) {
        if (__food == extra) {
          toBeRemoved = __food;
        }
      }
    }
    if (toBeRemoved != null) {
      _food.remove(toBeRemoved);
    } else {
      _food.add(extra);
    }

    extraList[index] = _food;

    yield state.copyWith(
        createOrderFailureOrSuccess: none(), selectedExtras: extraList);
  }

  Stream<OrderState> _performSelectedFood(
      Food food, String name, int selectedIndex) async* {
    Map<int, List<Food>> foodList = state.selectedFood;

    List<Food> _food = foodList[selectedIndex] ?? [];
    Food? toBeRemoved;

    if (_food.isNotEmpty) {
      for (var __food in _food) {
        if (__food.section == food.section) {
          toBeRemoved = __food;
        }
      }
    }
    _food.remove(toBeRemoved);
    _food.add(food);

    foodList[selectedIndex] = _food;
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
