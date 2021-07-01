// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'composition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Composition _$CompositionFromJson(Map<String, dynamic> json) {
  return _Composition.fromJson(json);
}

/// @nodoc
class _$CompositionTearOff {
  const _$CompositionTearOff();

  _Composition call(int menu, List<int> selected_foods, List<int> extras) {
    return _Composition(
      menu,
      selected_foods,
      extras,
    );
  }

  Composition fromJson(Map<String, Object> json) {
    return Composition.fromJson(json);
  }
}

/// @nodoc
const $Composition = _$CompositionTearOff();

/// @nodoc
mixin _$Composition {
  int get menu => throw _privateConstructorUsedError;
  List<int> get selected_foods => throw _privateConstructorUsedError;
  List<int> get extras => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompositionCopyWith<Composition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompositionCopyWith<$Res> {
  factory $CompositionCopyWith(
          Composition value, $Res Function(Composition) then) =
      _$CompositionCopyWithImpl<$Res>;
  $Res call({int menu, List<int> selected_foods, List<int> extras});
}

/// @nodoc
class _$CompositionCopyWithImpl<$Res> implements $CompositionCopyWith<$Res> {
  _$CompositionCopyWithImpl(this._value, this._then);

  final Composition _value;
  // ignore: unused_field
  final $Res Function(Composition) _then;

  @override
  $Res call({
    Object? menu = freezed,
    Object? selected_foods = freezed,
    Object? extras = freezed,
  }) {
    return _then(_value.copyWith(
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as int,
      selected_foods: selected_foods == freezed
          ? _value.selected_foods
          : selected_foods // ignore: cast_nullable_to_non_nullable
              as List<int>,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$CompositionCopyWith<$Res>
    implements $CompositionCopyWith<$Res> {
  factory _$CompositionCopyWith(
          _Composition value, $Res Function(_Composition) then) =
      __$CompositionCopyWithImpl<$Res>;
  @override
  $Res call({int menu, List<int> selected_foods, List<int> extras});
}

/// @nodoc
class __$CompositionCopyWithImpl<$Res> extends _$CompositionCopyWithImpl<$Res>
    implements _$CompositionCopyWith<$Res> {
  __$CompositionCopyWithImpl(
      _Composition _value, $Res Function(_Composition) _then)
      : super(_value, (v) => _then(v as _Composition));

  @override
  _Composition get _value => super._value as _Composition;

  @override
  $Res call({
    Object? menu = freezed,
    Object? selected_foods = freezed,
    Object? extras = freezed,
  }) {
    return _then(_Composition(
      menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as int,
      selected_foods == freezed
          ? _value.selected_foods
          : selected_foods // ignore: cast_nullable_to_non_nullable
              as List<int>,
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Composition implements _Composition {
  _$_Composition(this.menu, this.selected_foods, this.extras);

  factory _$_Composition.fromJson(Map<String, dynamic> json) =>
      _$_$_CompositionFromJson(json);

  @override
  final int menu;
  @override
  final List<int> selected_foods;
  @override
  final List<int> extras;

  @override
  String toString() {
    return 'Composition(menu: $menu, selected_foods: $selected_foods, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Composition &&
            (identical(other.menu, menu) ||
                const DeepCollectionEquality().equals(other.menu, menu)) &&
            (identical(other.selected_foods, selected_foods) ||
                const DeepCollectionEquality()
                    .equals(other.selected_foods, selected_foods)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menu) ^
      const DeepCollectionEquality().hash(selected_foods) ^
      const DeepCollectionEquality().hash(extras);

  @JsonKey(ignore: true)
  @override
  _$CompositionCopyWith<_Composition> get copyWith =>
      __$CompositionCopyWithImpl<_Composition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CompositionToJson(this);
  }
}

abstract class _Composition implements Composition {
  factory _Composition(int menu, List<int> selected_foods, List<int> extras) =
      _$_Composition;

  factory _Composition.fromJson(Map<String, dynamic> json) =
      _$_Composition.fromJson;

  @override
  int get menu => throw _privateConstructorUsedError;
  @override
  List<int> get selected_foods => throw _privateConstructorUsedError;
  @override
  List<int> get extras => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompositionCopyWith<_Composition> get copyWith =>
      throw _privateConstructorUsedError;
}
