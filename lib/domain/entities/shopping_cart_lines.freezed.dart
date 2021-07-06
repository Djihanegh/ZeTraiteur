// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_cart_lines.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingCartLines _$ShoppingCartLinesFromJson(Map<String, dynamic> json) {
  return _ShoppingCartLines.fromJson(json);
}

/// @nodoc
class _$ShoppingCartLinesTearOff {
  const _$ShoppingCartLinesTearOff();

  _ShoppingCartLines call(int quantity, ShoppingCartComposition? composition) {
    return _ShoppingCartLines(
      quantity,
      composition,
    );
  }

  ShoppingCartLines fromJson(Map<String, Object> json) {
    return ShoppingCartLines.fromJson(json);
  }
}

/// @nodoc
const $ShoppingCartLines = _$ShoppingCartLinesTearOff();

/// @nodoc
mixin _$ShoppingCartLines {
  int get quantity => throw _privateConstructorUsedError;
  ShoppingCartComposition? get composition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCartLinesCopyWith<ShoppingCartLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartLinesCopyWith<$Res> {
  factory $ShoppingCartLinesCopyWith(
          ShoppingCartLines value, $Res Function(ShoppingCartLines) then) =
      _$ShoppingCartLinesCopyWithImpl<$Res>;
  $Res call({int quantity, ShoppingCartComposition? composition});

  $ShoppingCartCompositionCopyWith<$Res>? get composition;
}

/// @nodoc
class _$ShoppingCartLinesCopyWithImpl<$Res>
    implements $ShoppingCartLinesCopyWith<$Res> {
  _$ShoppingCartLinesCopyWithImpl(this._value, this._then);

  final ShoppingCartLines _value;
  // ignore: unused_field
  final $Res Function(ShoppingCartLines) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? composition = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      composition: composition == freezed
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as ShoppingCartComposition?,
    ));
  }

  @override
  $ShoppingCartCompositionCopyWith<$Res>? get composition {
    if (_value.composition == null) {
      return null;
    }

    return $ShoppingCartCompositionCopyWith<$Res>(_value.composition!, (value) {
      return _then(_value.copyWith(composition: value));
    });
  }
}

/// @nodoc
abstract class _$ShoppingCartLinesCopyWith<$Res>
    implements $ShoppingCartLinesCopyWith<$Res> {
  factory _$ShoppingCartLinesCopyWith(
          _ShoppingCartLines value, $Res Function(_ShoppingCartLines) then) =
      __$ShoppingCartLinesCopyWithImpl<$Res>;
  @override
  $Res call({int quantity, ShoppingCartComposition? composition});

  @override
  $ShoppingCartCompositionCopyWith<$Res>? get composition;
}

/// @nodoc
class __$ShoppingCartLinesCopyWithImpl<$Res>
    extends _$ShoppingCartLinesCopyWithImpl<$Res>
    implements _$ShoppingCartLinesCopyWith<$Res> {
  __$ShoppingCartLinesCopyWithImpl(
      _ShoppingCartLines _value, $Res Function(_ShoppingCartLines) _then)
      : super(_value, (v) => _then(v as _ShoppingCartLines));

  @override
  _ShoppingCartLines get _value => super._value as _ShoppingCartLines;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? composition = freezed,
  }) {
    return _then(_ShoppingCartLines(
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      composition == freezed
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as ShoppingCartComposition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingCartLines implements _ShoppingCartLines {
  _$_ShoppingCartLines(this.quantity, this.composition);

  factory _$_ShoppingCartLines.fromJson(Map<String, dynamic> json) =>
      _$_$_ShoppingCartLinesFromJson(json);

  @override
  final int quantity;
  @override
  final ShoppingCartComposition? composition;

  @override
  String toString() {
    return 'ShoppingCartLines(quantity: $quantity, composition: $composition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingCartLines &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.composition, composition) ||
                const DeepCollectionEquality()
                    .equals(other.composition, composition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(composition);

  @JsonKey(ignore: true)
  @override
  _$ShoppingCartLinesCopyWith<_ShoppingCartLines> get copyWith =>
      __$ShoppingCartLinesCopyWithImpl<_ShoppingCartLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShoppingCartLinesToJson(this);
  }
}

abstract class _ShoppingCartLines implements ShoppingCartLines {
  factory _ShoppingCartLines(
          int quantity, ShoppingCartComposition? composition) =
      _$_ShoppingCartLines;

  factory _ShoppingCartLines.fromJson(Map<String, dynamic> json) =
      _$_ShoppingCartLines.fromJson;

  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  ShoppingCartComposition? get composition =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingCartLinesCopyWith<_ShoppingCartLines> get copyWith =>
      throw _privateConstructorUsedError;
}
