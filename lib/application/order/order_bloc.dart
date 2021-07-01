import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:ze_traiteur/domain/entities/lines.dart';

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
    yield* event.map(addFood: (e) async* {
      yield* _performAddFood(e.foodId);
    }, addExtra: (e) async* {
      yield* _performAddExtra(e.extraId);
    }, foodChanged: (e) async* {
      yield state.copyWith(foodId: e.foodId);
    }, extraChanged: (e) async* {
      yield state.copyWith(extraId: e.extraId);
    });
  }

  Stream<OrderState> _performAddFood(
    int foodId,
  ) async* {
    // Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    List<int> foodsList = state.foods;

    if (!foodsList.contains(foodId)) {
      foodsList.add(foodId);
    }

    //Lines line = Lines(1 , Composition( state.menu , state.selected_foods , state.extra ));

    yield state.copyWith(createOrderFailureOrSuccess: none(), foods: foodsList);

    /*  failureOrSuccess = await forwardedCall(page: page);

    yield state.copyWith(
      createOrderFailureOrSuccess: optionOf(failureOrSuccess),
    );*/
  }

  Stream<OrderState> _performAddExtra(
    int extraId,
  ) async* {
    // Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    state.extras.add(extraId);
    //Lines line = Lines(1 , Composition( state.menu , state.selected_foods , state.extra ));

    yield state.copyWith(
        createOrderFailureOrSuccess: none(), extras: state.extras);

    /*  failureOrSuccess = await forwardedCall(page: page);

    yield state.copyWith(
      createOrderFailureOrSuccess: optionOf(failureOrSuccess),
    );*/
  }
}
