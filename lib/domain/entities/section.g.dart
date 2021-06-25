// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$_$_SectionFromJson(Map<String, dynamic> json) {
  return _$_Section(
    json['position'] as int?,
    json['name'] as String?,
    json['id'] as int,
    (json['foods'] as List<dynamic>?)
        ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'position': instance.position,
      'name': instance.name,
      'id': instance.id,
      'foods': instance.foods,
    };
