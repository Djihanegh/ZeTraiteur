part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.addFood(int foodId, int index) = AddFood;
  const factory OrderEvent.addExtra(int extraId) = AddExtra;
  const factory OrderEvent.selectFood(
      String name, Food food, int selectedIndex) = SelectFood;
  const factory OrderEvent.selectExtra(String name, Food extra) = SelectExtra;
  const factory OrderEvent.foodChanged(int foodId, int index) = FoodChanged;
  const factory OrderEvent.deliveryFeeChanged(int deliveryFee) =
      DeliveryFeeChanged;

  const factory OrderEvent.extraChanged(int extraId) = ExtraChanged;
  const factory OrderEvent.sendOrderToCart(int menuId) = SendOrderToCart;
  const factory OrderEvent.sendCompleteOrderToCart(String menu) =
      SendCompleteOrderToCart;
  const factory OrderEvent.numberPhoneChanged(int phone) = NumberPhoneChanged;
  const factory OrderEvent.addressChanged(String address) = AddressChanged;
  const factory OrderEvent.createOrder(Map<String, dynamic> body) = CreateOrder;
  const factory OrderEvent.priceChanged(double price) = PriceChanged;
  const factory OrderEvent.deleteLine(ShoppingCartLines line) = DeleteLine;
}
