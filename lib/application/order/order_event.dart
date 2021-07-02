part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.addFood(int foodId, int index) = AddFood;
  const factory OrderEvent.addExtra(int extraId) = AddExtra;
  const factory OrderEvent.foodChanged(int foodId) = FoodChanged;
  const factory OrderEvent.extraChanged(int extraId) = ExtraChanged;
  const factory OrderEvent.sendOrderToCart(int menuId) = SendOrderToCart;
}
