import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  factory Food(
      String? name,
      int id,
      int? section,
      String? image,
      String? description,
      double? price,
      @JsonKey(name: 'discount_price') double? discountPrice,
      @JsonKey(name: 'delivery_fee') double? deliveryFee) = _Food;
  static const fromJsonFactory = _$FoodFromJson;
  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
