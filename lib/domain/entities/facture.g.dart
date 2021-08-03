// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Facture _$_$_FactureFromJson(Map<String, dynamic> json) {
  return _$_Facture(
    json['quantity'] as int,
    json['created_at'] as String,
    json['status'] as String,
    json['number'] as String,
    json['composition'] == null
        ? null
        : FactureComposition.fromJson(
            json['composition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FactureToJson(_$_Facture instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'created_at': instance.createdAt,
      'status': instance.status,
      'number': instance.number,
      'composition': instance.composition,
    };
