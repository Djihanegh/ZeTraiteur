// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Addresses _$_$_AddressesFromJson(Map<String, dynamic> json) {
  return _$_Addresses(
    json['id'] as int,
    json['client'] as int,
    json['address'] as String,
    CityObj.fromJson(json['cityObj'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AddressesToJson(_$_Addresses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client': instance.client,
      'address': instance.address,
      'cityObj': instance.cityObj,
    };
