part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.addFood(int foodId, int index) = AddFood;
  const factory OrderEvent.addExtra(int extraId) = AddExtra;
  const factory OrderEvent.selectFood(
      String name, Food food, int selectedIndex) = SelectFood;
  const factory OrderEvent.selectExtra(String name, Food extra ,  int index) = SelectExtra;
  const factory OrderEvent.foodChanged(int foodId, int index) = FoodChanged;
  const factory OrderEvent.deliveryFeeChanged(int deliveryFee) =
      DeliveryFeeChanged;
  const factory OrderEvent.extraChanged(int extraId) = ExtraChanged;
  const factory OrderEvent.sendOrderToCart(int menuId , int index,
      ) = SendOrderToCart;
  const factory OrderEvent.sendCompleteOrderToCart(String menu , int index
  ) =
      SendCompleteOrderToCart;
  const factory OrderEvent.numberPhoneChanged(int phone) = NumberPhoneChanged;
  const factory OrderEvent.numberOfOrderChanged(int numberOfOrder) = NumberOfOrderChanged;
  const factory OrderEvent.addressChanged(String address) = AddressChanged;
  const factory OrderEvent.createOrder(Map<String, dynamic> body) = CreateOrder;
  const factory OrderEvent.priceChanged(double price) = PriceChanged;
  const factory OrderEvent.deleteLine(ShoppingCartLines shoppingCartLine  , int index) = DeleteLine;
  const factory OrderEvent.reinitializeExtraAndFood() = ReinitializeExtraAndFood;
  const factory OrderEvent.reinitializeRadioBtnValues(bool value) = ReinitializeRadioBtnValues;
  const factory OrderEvent.foodPriceChanged(bool value) = FoodPriceChanged;

}
