// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'addresses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Addresses _$AddressesFromJson(Map<String, dynamic> json) {
  return _Addresses.fromJson(json);
}

/// @nodoc
class _$AddressesTearOff {
  const _$AddressesTearOff();

  _Addresses call(int id, int client, String address, CityObj cityObj) {
    return _Addresses(
      id,
      client,
      address,
      cityObj,
    );
  }

  Addresses fromJson(Map<String, Object> json) {
    return Addresses.fromJson(json);
  }
}

/// @nodoc
const $Addresses = _$AddressesTearOff();

/// @nodoc
mixin _$Addresses {
  int get id => throw _privateConstructorUsedError;
  int get client => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  CityObj get cityObj => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressesCopyWith<Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesCopyWith<$Res> {
  factory $AddressesCopyWith(Addresses value, $Res Function(Addresses) then) =
      _$AddressesCopyWithImpl<$Res>;
  $Res call({int id, int client, String address, CityObj cityObj});

  $CityObjCopyWith<$Res> get cityObj;
}

/// @nodoc
class _$AddressesCopyWithImpl<$Res> implements $AddressesCopyWith<$Res> {
  _$AddressesCopyWithImpl(this._value, this._then);

  final Addresses _value;
  // ignore: unused_field
  final $Res Function(Addresses) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? client = freezed,
    Object? address = freezed,
    Object? cityObj = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      cityObj: cityObj == freezed
          ? _value.cityObj
          : cityObj // ignore: cast_nullable_to_non_nullable
              as CityObj,
    ));
  }

  @override
  $CityObjCopyWith<$Res> get cityObj {
    return $CityObjCopyWith<$Res>(_value.cityObj, (value) {
      return _then(_value.copyWith(cityObj: value));
    });
  }
}

/// @nodoc
abstract class _$AddressesCopyWith<$Res> implements $AddressesCopyWith<$Res> {
  factory _$AddressesCopyWith(
          _Addresses value, $Res Function(_Addresses) then) =
      __$AddressesCopyWithImpl<$Res>;
  @override
  $Res call({int id, int client, String address, CityObj cityObj});

  @override
  $CityObjCopyWith<$Res> get cityObj;
}

/// @nodoc
class __$AddressesCopyWithImpl<$Res> extends _$AddressesCopyWithImpl<$Res>
    implements _$AddressesCopyWith<$Res> {
  __$AddressesCopyWithImpl(_Addresses _value, $Res Function(_Addresses) _then)
      : super(_value, (v) => _then(v as _Addresses));

  @override
  _Addresses get _value => super._value as _Addresses;

  @override
  $Res call({
    Object? id = freezed,
    Object? client = freezed,
    Object? address = freezed,
    Object? cityObj = freezed,
  }) {
    return _then(_Addresses(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      cityObj == freezed
          ? _value.cityObj
          : cityObj // ignore: cast_nullable_to_non_nullable
              as CityObj,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Addresses implements _Addresses {
  _$_Addresses(this.id, this.client, this.address, this.cityObj);

  factory _$_Addresses.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressesFromJson(json);

  @override
  final int id;
  @override
  final int client;
  @override
  final String address;
  @override
  final CityObj cityObj;

  @override
  String toString() {
    return 'Addresses(id: $id, client: $client, address: $address, cityObj: $cityObj)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Addresses &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.client, client) ||
                const DeepCollectionEquality().equals(other.client, client)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.cityObj, cityObj) ||
                const DeepCollectionEquality().equals(other.cityObj, cityObj)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(client) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(cityObj);

  @JsonKey(ignore: true)
  @override
  _$AddressesCopyWith<_Addresses> get copyWith =>
      __$AddressesCopyWithImpl<_Addresses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressesToJson(this);
  }
}

abstract class _Addresses implements Addresses {
  factory _Addresses(int id, int client, String address, CityObj cityObj) =
      _$_Addresses;

  factory _Addresses.fromJson(Map<String, dynamic> json) =
      _$_Addresses.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get client => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  CityObj get cityObj => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressesCopyWith<_Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}
