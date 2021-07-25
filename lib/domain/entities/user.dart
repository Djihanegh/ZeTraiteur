import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ze_traiteur/domain/entities/addresses.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone')  String? phone,
    @JsonKey(name: 'city_obj') CityObj? cityObj,
    List<Addresses>? addresses,
    String? email,
    String? address,
  }) = _User;
  static const fromJsonFactory = _$UserFromJson;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
