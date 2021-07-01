// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Composition _$_$_CompositionFromJson(Map<String, dynamic> json) {
  return _$_Composition(
    json['menu'] as int,
    (json['selected_foods'] as List<dynamic>).map((e) => e as int).toList(),
    (json['extras'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$_$_CompositionToJson(_$_Composition instance) =>
    <String, dynamic>{
      'menu': instance.menu,
      'selected_foods': instance.selected_foods,
      'extras': instance.extras,
    };
