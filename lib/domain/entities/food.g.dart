// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Food _$_$_FoodFromJson(Map<String, dynamic> json) {
  return _$_Food(
    json['name'] as String?,
    json['id'] as int,
    json['section'] as int?,
    json['image'] as String?,
    json['description'] as String?,
    (json['price'] as num?)?.toDouble(),
    (json['discount_price'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'section': instance.section,
      'image': instance.image,
      'description': instance.description,
      'price': instance.price,
      'discount_price': instance.discountPrice,
    };
