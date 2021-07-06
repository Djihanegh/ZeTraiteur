import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_composition.dart';


part 'shopping_cart_lines.freezed.dart';
part 'shopping_cart_lines.g.dart';

@freezed
class ShoppingCartLines with _$ShoppingCartLines {
 
  factory ShoppingCartLines(
      int quantity,
      ShoppingCartComposition? composition,
  ) = _ShoppingCartLines;
  static const fromJsonFactory = _$ShoppingCartLinesFromJson;
  factory ShoppingCartLines.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartLinesFromJson(json);
}
