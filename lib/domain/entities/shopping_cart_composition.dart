import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ze_traiteur/domain/entities/food.dart';

part 'shopping_cart_composition.freezed.dart';
part 'shopping_cart_composition.g.dart';

@freezed
class ShoppingCartComposition with _$ShoppingCartComposition {
  factory ShoppingCartComposition(
    String menu,
    List<Food> selectedFoods,
    List<Food> extras,
  ) = _ShoppingCartComposition;
  static const fromJsonFactory = _$ShoppingCartCompositionFromJson;
  factory ShoppingCartComposition.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartCompositionFromJson(json);
}
