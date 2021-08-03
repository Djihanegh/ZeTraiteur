// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'facture_composition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FactureComposition _$FactureCompositionFromJson(Map<String, dynamic> json) {
  return _FactureComposition.fromJson(json);
}

/// @nodoc
class _$FactureCompositionTearOff {
  const _$FactureCompositionTearOff();

  _FactureComposition call(
      @JsonKey(name: "selected_foods_list") List<Food>? selectedFoods,
      @JsonKey(name: "extras_list") List<Food> extras) {
    return _FactureComposition(
      selectedFoods,
      extras,
    );
  }

  FactureComposition fromJson(Map<String, Object> json) {
    return FactureComposition.fromJson(json);
  }
}

/// @nodoc
const $FactureComposition = _$FactureCompositionTearOff();

/// @nodoc
mixin _$FactureComposition {
  @JsonKey(name: "selected_foods_list")
  List<Food>? get selectedFoods => throw _privateConstructorUsedError;
  @JsonKey(name: "extras_list")
  List<Food> get extras => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactureCompositionCopyWith<FactureComposition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactureCompositionCopyWith<$Res> {
  factory $FactureCompositionCopyWith(
          FactureComposition value, $Res Function(FactureComposition) then) =
      _$FactureCompositionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "selected_foods_list") List<Food>? selectedFoods,
      @JsonKey(name: "extras_list") List<Food> extras});
}

/// @nodoc
class _$FactureCompositionCopyWithImpl<$Res>
    implements $FactureCompositionCopyWith<$Res> {
  _$FactureCompositionCopyWithImpl(this._value, this._then);

  final FactureComposition _value;
  // ignore: unused_field
  final $Res Function(FactureComposition) _then;

  @override
  $Res call({
    Object? selectedFoods = freezed,
    Object? extras = freezed,
  }) {
    return _then(_value.copyWith(
      selectedFoods: selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc
abstract class _$FactureCompositionCopyWith<$Res>
    implements $FactureCompositionCopyWith<$Res> {
  factory _$FactureCompositionCopyWith(
          _FactureComposition value, $Res Function(_FactureComposition) then) =
      __$FactureCompositionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "selected_foods_list") List<Food>? selectedFoods,
      @JsonKey(name: "extras_list") List<Food> extras});
}

/// @nodoc
class __$FactureCompositionCopyWithImpl<$Res>
    extends _$FactureCompositionCopyWithImpl<$Res>
    implements _$FactureCompositionCopyWith<$Res> {
  __$FactureCompositionCopyWithImpl(
      _FactureComposition _value, $Res Function(_FactureComposition) _then)
      : super(_value, (v) => _then(v as _FactureComposition));

  @override
  _FactureComposition get _value => super._value as _FactureComposition;

  @override
  $Res call({
    Object? selectedFoods = freezed,
    Object? extras = freezed,
  }) {
    return _then(_FactureComposition(
      selectedFoods == freezed
          ? _value.selectedFoods
          : selectedFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FactureComposition implements _FactureComposition {
  _$_FactureComposition(
      @JsonKey(name: "selected_foods_list") this.selectedFoods,
      @JsonKey(name: "extras_list") this.extras);

  factory _$_FactureComposition.fromJson(Map<String, dynamic> json) =>
      _$_$_FactureCompositionFromJson(json);

  @override
  @JsonKey(name: "selected_foods_list")
  final List<Food>? selectedFoods;
  @override
  @JsonKey(name: "extras_list")
  final List<Food> extras;

  @override
  String toString() {
    return 'FactureComposition(selectedFoods: $selectedFoods, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FactureComposition &&
            (identical(other.selectedFoods, selectedFoods) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFoods, selectedFoods)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedFoods) ^
      const DeepCollectionEquality().hash(extras);

  @JsonKey(ignore: true)
  @override
  _$FactureCompositionCopyWith<_FactureComposition> get copyWith =>
      __$FactureCompositionCopyWithImpl<_FactureComposition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FactureCompositionToJson(this);
  }
}

abstract class _FactureComposition implements FactureComposition {
  factory _FactureComposition(
      @JsonKey(name: "selected_foods_list") List<Food>? selectedFoods,
      @JsonKey(name: "extras_list") List<Food> extras) = _$_FactureComposition;

  factory _FactureComposition.fromJson(Map<String, dynamic> json) =
      _$_FactureComposition.fromJson;

  @override
  @JsonKey(name: "selected_foods_list")
  List<Food>? get selectedFoods => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "extras_list")
  List<Food> get extras => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FactureCompositionCopyWith<_FactureComposition> get copyWith =>
      throw _privateConstructorUsedError;
}
