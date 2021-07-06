// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_cart_composition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingCartComposition _$ShoppingCartCompositionFromJson(
    Map<String, dynamic> json) {
  return _ShoppingCartComposition.fromJson(json);
}

/// @nodoc
class _$ShoppingCartCompositionTearOff {
  const _$ShoppingCartCompositionTearOff();

  _ShoppingCartComposition call(
      String menu, List<Food> selectedFoods, List<Food> extras) {
    return _ShoppingCartComposition(
      menu,
      selectedFoods,
      extras,
    );
  }

  ShoppingCartComposition fromJson(Map<String, Object> json) {
    return ShoppingCartComposition.fromJson(json);
  }
}

/// @nodoc
const $ShoppingCartComposition = _$ShoppingCartCompositionTearOff();

/// @nodoc
mixin _$ShoppingCartComposition {
  String get menu => throw _privateConstructorUsedError;
  List<Food> get selectedFoods => throw _privateConstructorUsedError;
  List<Food> get extras => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCartCompositionCopyWith<ShoppingCartComposition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartCompositionCopyWith<$Res> {
  factory $ShoppingCartCompositionCopyWith(ShoppingCartComposition value,
          $Res Function(ShoppingCartComposition) then) =
      _$ShoppingCartCompositionCopyWithImpl<$Res>;
  $Res call({String menu, List<Food> selectedFoods, List<Food> extras});
}

/// @nodoc
class _$ShoppingCartCompositionCopyWithImpl<$Res>
    implements $ShoppingCartCompositionCopyWith<$Res> {
  _$ShoppingCartCompositionCopyWithImpl(this._value, this._then);

  final ShoppingCartComposition _value;
  // ignore: unused_field
  final $Res Function(ShoppingCartComposition) _then;

  @override
  $Res call({
    Object? menu = freezed,
    Object? selectedFoods = freezed,
    Object? extras = freezed,
  }) {
    return _then(_value.copyWith(
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as String,
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc
abstract class _$ShoppingCartCompositionCopyWith<$Res>
    implements $ShoppingCartCompositionCopyWith<$Res> {
  factory _$ShoppingCartCompositionCopyWith(_ShoppingCartComposition value,
          $Res Function(_ShoppingCartComposition) then) =
      __$ShoppingCartCompositionCopyWithImpl<$Res>;
  @override
  $Res call({String menu, List<Food> selectedFoods, List<Food> extras});
}

/// @nodoc
class __$ShoppingCartCompositionCopyWithImpl<$Res>
    extends _$ShoppingCartCompositionCopyWithImpl<$Res>
    implements _$ShoppingCartCompositionCopyWith<$Res> {
  __$ShoppingCartCompositionCopyWithImpl(_ShoppingCartComposition _value,
      $Res Function(_ShoppingCartComposition) _then)
      : super(_value, (v) => _then(v as _ShoppingCartComposition));

  @override
  _ShoppingCartComposition get _value =>
      super._value as _ShoppingCartComposition;

  @override
  $Res call({
    Object? menu = freezed,
    Object? selectedFoods = freezed,
    Object? extras = freezed,
  }) {
    return _then(_ShoppingCartComposition(
      menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as String,
      selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingCartComposition implements _ShoppingCartComposition {
  _$_ShoppingCartComposition(this.menu, this.selectedFoods, this.extras);

  factory _$_ShoppingCartComposition.fromJson(Map<String, dynamic> json) =>
      _$_$_ShoppingCartCompositionFromJson(json);

  @override
  final String menu;
  @override
  final List<Food> selectedFoods;
  @override
  final List<Food> extras;

  @override
  String toString() {
    return 'ShoppingCartComposition(menu: $menu, selectedFoods: $selectedFoods, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingCartComposition &&
            (identical(other.menu, menu) ||
                const DeepCollectionEquality().equals(other.menu, menu)) &&
            (identical(other.selectedFoods, selectedFoods) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFoods, selectedFoods)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menu) ^
      const DeepCollectionEquality().hash(selectedFoods) ^
      const DeepCollectionEquality().hash(extras);

  @JsonKey(ignore: true)
  @override
  _$ShoppingCartCompositionCopyWith<_ShoppingCartComposition> get copyWith =>
      __$ShoppingCartCompositionCopyWithImpl<_ShoppingCartComposition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShoppingCartCompositionToJson(this);
  }
}

abstract class _ShoppingCartComposition implements ShoppingCartComposition {
  factory _ShoppingCartComposition(
          String menu, List<Food> selectedFoods, List<Food> extras) =
      _$_ShoppingCartComposition;

  factory _ShoppingCartComposition.fromJson(Map<String, dynamic> json) =
      _$_ShoppingCartComposition.fromJson;

  @override
  String get menu => throw _privateConstructorUsedError;
  @override
  List<Food> get selectedFoods => throw _privateConstructorUsedError;
  @override
  List<Food> get extras => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingCartCompositionCopyWith<_ShoppingCartComposition> get copyWith =>
      throw _privateConstructorUsedError;
}
