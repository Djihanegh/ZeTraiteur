part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required int foodId,
    required int extraId,
    required int menu,
    required int quantity,
    required int index,
    required List<int> foods,
    required List<int> extras,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        createOrderFailureOrSuccess,
    final String? error,
    final List<Lines>? lines,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
      createOrderFailureOrSuccess: none(),
      lines: [],
      extraId: 0,
      foodId: 0,
      menu: 0,
      quantity: 0,
      index: 0,
      extras: [],
      foods: []);
}
