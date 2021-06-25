// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuItem _$_$_MenuItemFromJson(Map<String, dynamic> json) {
  return _$_MenuItem(
    json['image'] as String?,
    json['name'] as String?,
    json['color'] as String?,
    json['id'] as int,
    json['audio_file_name'] as String?,
    json['available'] as bool?,
    json['font_name'] as String?,
    json['price'] as int?,
    json['sections'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$_$_MenuItemToJson(_$_MenuItem instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'color': instance.color,
      'id': instance.id,
      'audio_file_name': instance.audioFileName,
      'available': instance.available,
      'font_name': instance.fontName,
      'price': instance.price,
      'sections': instance.sections,
    };
