// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
class _$SectionTearOff {
  const _$SectionTearOff();

  _Section call(int? position, String? name, int id, List<Food>? foods) {
    return _Section(
      position,
      name,
      id,
      foods,
    );
  }

  Section fromJson(Map<String, Object> json) {
    return Section.fromJson(json);
  }
}

/// @nodoc
const $Section = _$SectionTearOff();

/// @nodoc
mixin _$Section {
  int? get position => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<Food>? get foods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res>;
  $Res call({int? position, String? name, int id, List<Food>? foods});
}

/// @nodoc
class _$SectionCopyWithImpl<$Res> implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  final Section _value;
  // ignore: unused_field
  final $Res Function(Section) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? foods = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
    ));
  }
}

/// @nodoc
abstract class _$SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$SectionCopyWith(_Section value, $Res Function(_Section) then) =
      __$SectionCopyWithImpl<$Res>;
  @override
  $Res call({int? position, String? name, int id, List<Food>? foods});
}

/// @nodoc
class __$SectionCopyWithImpl<$Res> extends _$SectionCopyWithImpl<$Res>
    implements _$SectionCopyWith<$Res> {
  __$SectionCopyWithImpl(_Section _value, $Res Function(_Section) _then)
      : super(_value, (v) => _then(v as _Section));

  @override
  _Section get _value => super._value as _Section;

  @override
  $Res call({
    Object? position = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? foods = freezed,
  }) {
    return _then(_Section(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Section implements _Section {
  _$_Section(this.position, this.name, this.id, this.foods);

  factory _$_Section.fromJson(Map<String, dynamic> json) =>
      _$_$_SectionFromJson(json);

  @override
  final int? position;
  @override
  final String? name;
  @override
  final int id;
  @override
  final List<Food>? foods;

  @override
  String toString() {
    return 'Section(position: $position, name: $name, id: $id, foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Section &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(foods);

  @JsonKey(ignore: true)
  @override
  _$SectionCopyWith<_Section> get copyWith =>
      __$SectionCopyWithImpl<_Section>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SectionToJson(this);
  }
}

abstract class _Section implements Section {
  factory _Section(int? position, String? name, int id, List<Food>? foods) =
      _$_Section;

  factory _Section.fromJson(Map<String, dynamic> json) = _$_Section.fromJson;

  @override
  int? get position => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  List<Food>? get foods => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SectionCopyWith<_Section> get copyWith =>
      throw _privateConstructorUsedError;
}
