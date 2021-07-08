part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required int foodId,
    required int extraId,
    required int menu,
    required int quantity,
    required int index,
    required Map<int, int> foods,
    required List<int> extras,
    required Map<String, List<Food>> selectedExtras,
    required Map<String, List<Food>> selectedFood,
    required bool hasSentOrderToCart,
    required int phone,
    required String address,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        createOrderFailureOrSuccess,
    
    final String? error,
    final List<Lines>? lines,
    final List<ShoppingCartLines>? shoppingCartLines,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
      createOrderFailureOrSuccess: none(),
      lines: [],
      hasSentOrderToCart: false,
      extraId: 0,
      foodId: 0,
      menu: 0,
      quantity: 0,
      index: 0,
      extras: [],
      foods: {},
      address: '',
      phone: 775916789,
      selectedExtras: {},
      selectedFood: {},
    );
}
