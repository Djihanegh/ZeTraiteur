import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItem with _$MenuItem {
 
  factory MenuItem(
      String? imageUrl,
      String? name,
      String? color,
  ) = _MenuItem;
  static const fromJsonFactory = _$MenuItemFromJson;
  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}
