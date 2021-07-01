// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lines.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lines _$LinesFromJson(Map<String, dynamic> json) {
  return _Lines.fromJson(json);
}

/// @nodoc
class _$LinesTearOff {
  const _$LinesTearOff();

  _Lines call(int quantity, Composition composition) {
    return _Lines(
      quantity,
      composition,
    );
  }

  Lines fromJson(Map<String, Object> json) {
    return Lines.fromJson(json);
  }
}

/// @nodoc
const $Lines = _$LinesTearOff();

/// @nodoc
mixin _$Lines {
  int get quantity => throw _privateConstructorUsedError;
  Composition get composition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinesCopyWith<Lines> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinesCopyWith<$Res> {
  factory $LinesCopyWith(Lines value, $Res Function(Lines) then) =
      _$LinesCopyWithImpl<$Res>;
  $Res call({int quantity, Composition composition});

  $CompositionCopyWith<$Res> get composition;
}

/// @nodoc
class _$LinesCopyWithImpl<$Res> implements $LinesCopyWith<$Res> {
  _$LinesCopyWithImpl(this._value, this._then);

  final Lines _value;
  // ignore: unused_field
  final $Res Function(Lines) _then;

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
              as Composition,
    ));
  }

  @override
  $CompositionCopyWith<$Res> get composition {
    return $CompositionCopyWith<$Res>(_value.composition, (value) {
      return _then(_value.copyWith(composition: value));
    });
  }
}

/// @nodoc
abstract class _$LinesCopyWith<$Res> implements $LinesCopyWith<$Res> {
  factory _$LinesCopyWith(_Lines value, $Res Function(_Lines) then) =
      __$LinesCopyWithImpl<$Res>;
  @override
  $Res call({int quantity, Composition composition});

  @override
  $CompositionCopyWith<$Res> get composition;
}

/// @nodoc
class __$LinesCopyWithImpl<$Res> extends _$LinesCopyWithImpl<$Res>
    implements _$LinesCopyWith<$Res> {
  __$LinesCopyWithImpl(_Lines _value, $Res Function(_Lines) _then)
      : super(_value, (v) => _then(v as _Lines));

  @override
  _Lines get _value => super._value as _Lines;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? composition = freezed,
  }) {
    return _then(_Lines(
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      composition == freezed
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as Composition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lines implements _Lines {
  _$_Lines(this.quantity, this.composition);

  factory _$_Lines.fromJson(Map<String, dynamic> json) =>
      _$_$_LinesFromJson(json);

  @override
  final int quantity;
  @override
  final Composition composition;

  @override
  String toString() {
    return 'Lines(quantity: $quantity, composition: $composition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lines &&
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
  _$LinesCopyWith<_Lines> get copyWith =>
      __$LinesCopyWithImpl<_Lines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinesToJson(this);
  }
}

abstract class _Lines implements Lines {
  factory _Lines(int quantity, Composition composition) = _$_Lines;

  factory _Lines.fromJson(Map<String, dynamic> json) = _$_Lines.fromJson;

  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  Composition get composition => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinesCopyWith<_Lines> get copyWith => throw _privateConstructorUsedError;
}
