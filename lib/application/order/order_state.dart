part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required int foodId,
    required int extraId,
    required int menu,
    required int deliveryFee,
    required int quantity,
    required double? price,
    required int page,
    required int index,
    required Map<int, int> foods,
    required List<int> extras,
    required Map<String, List<Food>> selectedExtras,
    required Map<String, List<Food>> selectedFood,
    required bool hasSentOrderToCart,
    required bool isLineDeleted,
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
        isLineDeleted: false,
        lines: [],
        hasSentOrderToCart: false,
        extraId: 0,
        foodId: 0,
        menu: 0,
        deliveryFee: 0,
        quantity: 0,
        page: 0,
        index: 0,
        extras: [],
        foods: {},
        address: '',
        phone: 777896534,
        price: 0.0,
        selectedExtras: {},
        selectedFood: {},
      );
}
