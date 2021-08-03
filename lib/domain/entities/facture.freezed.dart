// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'facture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Facture _$FactureFromJson(Map<String, dynamic> json) {
  return _Facture.fromJson(json);
}

/// @nodoc
class _$FactureTearOff {
  const _$FactureTearOff();

  _Facture call(int quantity, @JsonKey(name: "created_at") String createdAt,
      String status, String number, FactureComposition? composition) {
    return _Facture(
      quantity,
      createdAt,
      status,
      number,
      composition,
    );
  }

  Facture fromJson(Map<String, Object> json) {
    return Facture.fromJson(json);
  }
}

/// @nodoc
const $Facture = _$FactureTearOff();

/// @nodoc
mixin _$Facture {
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  FactureComposition? get composition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactureCopyWith<Facture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactureCopyWith<$Res> {
  factory $FactureCopyWith(Facture value, $Res Function(Facture) then) =
      _$FactureCopyWithImpl<$Res>;
  $Res call(
      {int quantity,
      @JsonKey(name: "created_at") String createdAt,
      String status,
      String number,
      FactureComposition? composition});

  $FactureCompositionCopyWith<$Res>? get composition;
}

/// @nodoc
class _$FactureCopyWithImpl<$Res> implements $FactureCopyWith<$Res> {
  _$FactureCopyWithImpl(this._value, this._then);

  final Facture _value;
  // ignore: unused_field
  final $Res Function(Facture) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? number = freezed,
    Object? composition = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      composition: composition == freezed
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as FactureComposition?,
    ));
  }

  @override
  $FactureCompositionCopyWith<$Res>? get composition {
    if (_value.composition == null) {
      return null;
    }

    return $FactureCompositionCopyWith<$Res>(_value.composition!, (value) {
      return _then(_value.copyWith(composition: value));
    });
  }
}

/// @nodoc
abstract class _$FactureCopyWith<$Res> implements $FactureCopyWith<$Res> {
  factory _$FactureCopyWith(_Facture value, $Res Function(_Facture) then) =
      __$FactureCopyWithImpl<$Res>;
  @override
  $Res call(
      {int quantity,
      @JsonKey(name: "created_at") String createdAt,
      String status,
      String number,
      FactureComposition? composition});

  @override
  $FactureCompositionCopyWith<$Res>? get composition;
}

/// @nodoc
class __$FactureCopyWithImpl<$Res> extends _$FactureCopyWithImpl<$Res>
    implements _$FactureCopyWith<$Res> {
  __$FactureCopyWithImpl(_Facture _value, $Res Function(_Facture) _then)
      : super(_value, (v) => _then(v as _Facture));

  @override
  _Facture get _value => super._value as _Facture;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? number = freezed,
    Object? composition = freezed,
  }) {
    return _then(_Facture(
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      composition == freezed
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as FactureComposition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Facture implements _Facture {
  _$_Facture(this.quantity, @JsonKey(name: "created_at") this.createdAt,
      this.status, this.number, this.composition);

  factory _$_Facture.fromJson(Map<String, dynamic> json) =>
      _$_$_FactureFromJson(json);

  @override
  final int quantity;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  final String status;
  @override
  final String number;
  @override
  final FactureComposition? composition;

  @override
  String toString() {
    return 'Facture(quantity: $quantity, createdAt: $createdAt, status: $status, number: $number, composition: $composition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Facture &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.composition, composition) ||
                const DeepCollectionEquality()
                    .equals(other.composition, composition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(composition);

  @JsonKey(ignore: true)
  @override
  _$FactureCopyWith<_Facture> get copyWith =>
      __$FactureCopyWithImpl<_Facture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FactureToJson(this);
  }
}

abstract class _Facture implements Facture {
  factory _Facture(
      int quantity,
      @JsonKey(name: "created_at") String createdAt,
      String status,
      String number,
      FactureComposition? composition) = _$_Facture;

  factory _Facture.fromJson(Map<String, dynamic> json) = _$_Facture.fromJson;

  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get number => throw _privateConstructorUsedError;
  @override
  FactureComposition? get composition => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FactureCopyWith<_Facture> get copyWith =>
      throw _privateConstructorUsedError;
}
