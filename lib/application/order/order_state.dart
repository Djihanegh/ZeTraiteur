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
    required int indexOfLine,
    required bool isFoodPriceChanged,
    required bool  radioBtnValue,
    required int numberOfOrder,
    required Map<int, int> foods,
    required List<int> extras,
    required Map<int, List<Food>> selectedExtras,
    required Map<int, List<Food>> selectedFood,
    required bool hasSentOrderToCart,
    required bool hasSentCompleteOrderToCart,

    required bool isLineDeleted,
    required int phone,
    required String address,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        createOrderFailureOrSuccess,
    required
    Option<Either<ServerFailure, bool>>
    deleteItemFailureOrSuccessOption,
    final String? error,
    final List<Lines>? lines,
    final List<ShoppingCartLines>? shoppingCartLines,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
        createOrderFailureOrSuccess: none(),
        isLineDeleted: false,
        lines: [],
    hasSentCompleteOrderToCart: false,
        hasSentOrderToCart: false,
        extraId: 0,
        foodId: 0,
        menu: 0,
    radioBtnValue: false,
        deliveryFee: 0,
        quantity: 0,
        page: 0,
        index: 0,
        numberOfOrder: 0,
        indexOfLine: 0,
    isFoodPriceChanged: false,
        extras: [],
        foods: {},
        address: '',
        phone: 777896534,
        price: 0.0,
        selectedExtras: {},
    deleteItemFailureOrSuccessOption : none(),
        selectedFood: {},
      );
}
