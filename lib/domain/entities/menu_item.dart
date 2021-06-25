import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItem with _$MenuItem {
  factory MenuItem(
      String? image,
      String? name,
      String? color,
      int id,
      @JsonKey(name: 'audio_file_name') String? audioFileName,
      bool? available,
      @JsonKey(name: 'font_name') String? fontName,
      int? price,
      List? sections) = _MenuItem;
  static const fromJsonFactory = _$MenuItemFromJson;
  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}
