// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lines _$_$_LinesFromJson(Map<String, dynamic> json) {
  return _$_Lines(
    json['quantity'] as int,
    Composition.fromJson(json['composition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LinesToJson(_$_Lines instance) => <String, dynamic>{
      'quantity': instance.quantity,
      'composition': instance.composition,
    };
