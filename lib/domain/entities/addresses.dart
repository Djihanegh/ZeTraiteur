import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';

part 'addresses.freezed.dart';
part 'addresses.g.dart';

@freezed
class Addresses with _$Addresses {
 
  factory Addresses(
      int id,
      int client,
      String address,
      CityObj cityObj
  ) = _Addresses;
  static const fromJsonFactory = _$AddressesFromJson;
  factory Addresses.fromJson(Map<String, dynamic> json) =>
      _$AddressesFromJson(json);
}
