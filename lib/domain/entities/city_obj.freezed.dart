// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'city_obj.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityObj _$CityObjFromJson(Map<String, dynamic> json) {
  return _CityObj.fromJson(json);
}

/// @nodoc
class _$CityObjTearOff {
  const _$CityObjTearOff();

  _CityObj call(
      int id, String name, @JsonKey(name: 'delivery_fee') int deliveryFee) {
    return _CityObj(
      id,
      name,
      deliveryFee,
    );
  }

  CityObj fromJson(Map<String, Object> json) {
    return CityObj.fromJson(json);
  }
}

/// @nodoc
const $CityObj = _$CityObjTearOff();

/// @nodoc
mixin _$CityObj {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_fee')
  int get deliveryFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityObjCopyWith<CityObj> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityObjCopyWith<$Res> {
  factory $CityObjCopyWith(CityObj value, $Res Function(CityObj) then) =
      _$CityObjCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, @JsonKey(name: 'delivery_fee') int deliveryFee});
}

/// @nodoc
class _$CityObjCopyWithImpl<$Res> implements $CityObjCopyWith<$Res> {
  _$CityObjCopyWithImpl(this._value, this._then);

  final CityObj _value;
  // ignore: unused_field
  final $Res Function(CityObj) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? deliveryFee = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CityObjCopyWith<$Res> implements $CityObjCopyWith<$Res> {
  factory _$CityObjCopyWith(_CityObj value, $Res Function(_CityObj) then) =
      __$CityObjCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, @JsonKey(name: 'delivery_fee') int deliveryFee});
}

/// @nodoc
class __$CityObjCopyWithImpl<$Res> extends _$CityObjCopyWithImpl<$Res>
    implements _$CityObjCopyWith<$Res> {
  __$CityObjCopyWithImpl(_CityObj _value, $Res Function(_CityObj) _then)
      : super(_value, (v) => _then(v as _CityObj));

  @override
  _CityObj get _value => super._value as _CityObj;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? deliveryFee = freezed,
  }) {
    return _then(_CityObj(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityObj implements _CityObj {
  _$_CityObj(
      this.id, this.name, @JsonKey(name: 'delivery_fee') this.deliveryFee);

  factory _$_CityObj.fromJson(Map<String, dynamic> json) =>
      _$_$_CityObjFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'delivery_fee')
  final int deliveryFee;

  @override
  String toString() {
    return 'CityObj(id: $id, name: $name, deliveryFee: $deliveryFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityObj &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.deliveryFee, deliveryFee) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee, deliveryFee)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(deliveryFee);

  @JsonKey(ignore: true)
  @override
  _$CityObjCopyWith<_CityObj> get copyWith =>
      __$CityObjCopyWithImpl<_CityObj>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CityObjToJson(this);
  }
}

abstract class _CityObj implements CityObj {
  factory _CityObj(
          int id, String name, @JsonKey(name: 'delivery_fee') int deliveryFee) =
      _$_CityObj;

  factory _CityObj.fromJson(Map<String, dynamic> json) = _$_CityObj.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_fee')
  int get deliveryFee => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityObjCopyWith<_CityObj> get copyWith =>
      throw _privateConstructorUsedError;
}
