import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city_obj.freezed.dart';
part 'city_obj.g.dart';

@freezed
class CityObj with _$CityObj {
 
  factory CityObj(
      int id,
      String name,
      @JsonKey(name: 'delivery_fee') int deliveryFee,
  ) = _CityObj;
  static const fromJsonFactory = _$CityObjFromJson;
  factory CityObj.fromJson(Map<String, dynamic> json) =>
      _$CityObjFromJson(json);
}
