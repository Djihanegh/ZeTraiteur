// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    phone: json['phone'] as String?,
    cityObj: json['city_obj'] == null
        ? null
        : CityObj.fromJson(json['city_obj'] as Map<String, dynamic>),
    addresses: (json['addresses'] as List<dynamic>?)
        ?.map((e) => Addresses.fromJson(e as Map<String, dynamic>))
        .toList(),
    email: json['email'] as String?,
    address: json['address'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'city_obj': instance.cityObj,
      'addresses': instance.addresses,
      'email': instance.email,
      'address': instance.address,
    };
