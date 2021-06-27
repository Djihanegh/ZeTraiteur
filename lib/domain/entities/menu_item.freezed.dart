// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
class _$MenuItemTearOff {
  const _$MenuItemTearOff();

  _MenuItem call(
      String? image,
      String? name,
      String? color,
      int id,
      @JsonKey(name: 'audio_file_name') String? audioFileName,
      bool? available,
      @JsonKey(name: 'font_name') String? fontName,
      int? price,
      List<Section>? sections) {
    return _MenuItem(
      image,
      name,
      color,
      id,
      audioFileName,
      available,
      fontName,
      price,
      sections,
    );
  }

  MenuItem fromJson(Map<String, Object> json) {
    return MenuItem.fromJson(json);
  }
}

/// @nodoc
const $MenuItem = _$MenuItemTearOff();

/// @nodoc
mixin _$MenuItem {
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_file_name')
  String? get audioFileName => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_name')
  String? get fontName => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  List<Section>? get sections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res>;
  $Res call(
      {String? image,
      String? name,
      String? color,
      int id,
      @JsonKey(name: 'audio_file_name') String? audioFileName,
      bool? available,
      @JsonKey(name: 'font_name') String? fontName,
      int? price,
      List<Section>? sections});
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res> implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  final MenuItem _value;
  // ignore: unused_field
  final $Res Function(MenuItem) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? id = freezed,
    Object? audioFileName = freezed,
    Object? available = freezed,
    Object? fontName = freezed,
    Object? price = freezed,
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      audioFileName: audioFileName == freezed
          ? _value.audioFileName
          : audioFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      fontName: fontName == freezed
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
    ));
  }
}

/// @nodoc
abstract class _$MenuItemCopyWith<$Res> implements $MenuItemCopyWith<$Res> {
  factory _$MenuItemCopyWith(_MenuItem value, $Res Function(_MenuItem) then) =
      __$MenuItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? image,
      String? name,
      String? color,
      int id,
      @JsonKey(name: 'audio_file_name') String? audioFileName,
      bool? available,
      @JsonKey(name: 'font_name') String? fontName,
      int? price,
      List<Section>? sections});
}

/// @nodoc
class __$MenuItemCopyWithImpl<$Res> extends _$MenuItemCopyWithImpl<$Res>
    implements _$MenuItemCopyWith<$Res> {
  __$MenuItemCopyWithImpl(_MenuItem _value, $Res Function(_MenuItem) _then)
      : super(_value, (v) => _then(v as _MenuItem));

  @override
  _MenuItem get _value => super._value as _MenuItem;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? id = freezed,
    Object? audioFileName = freezed,
    Object? available = freezed,
    Object? fontName = freezed,
    Object? price = freezed,
    Object? sections = freezed,
  }) {
    return _then(_MenuItem(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      audioFileName == freezed
          ? _value.audioFileName
          : audioFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      fontName == freezed
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuItem implements _MenuItem {
  _$_MenuItem(
      this.image,
      this.name,
      this.color,
      this.id,
      @JsonKey(name: 'audio_file_name') this.audioFileName,
      this.available,
      @JsonKey(name: 'font_name') this.fontName,
      this.price,
      this.sections);

  factory _$_MenuItem.fromJson(Map<String, dynamic> json) =>
      _$_$_MenuItemFromJson(json);

  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? color;
  @override
  final int id;
  @override
  @JsonKey(name: 'audio_file_name')
  final String? audioFileName;
  @override
  final bool? available;
  @override
  @JsonKey(name: 'font_name')
  final String? fontName;
  @override
  final int? price;
  @override
  final List<Section>? sections;

  @override
  String toString() {
    return 'MenuItem(image: $image, name: $name, color: $color, id: $id, audioFileName: $audioFileName, available: $available, fontName: $fontName, price: $price, sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuItem &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.audioFileName, audioFileName) ||
                const DeepCollectionEquality()
                    .equals(other.audioFileName, audioFileName)) &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.fontName, fontName) ||
                const DeepCollectionEquality()
                    .equals(other.fontName, fontName)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.sections, sections) ||
                const DeepCollectionEquality()
                    .equals(other.sections, sections)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(audioFileName) ^
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(fontName) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(sections);

  @JsonKey(ignore: true)
  @override
  _$MenuItemCopyWith<_MenuItem> get copyWith =>
      __$MenuItemCopyWithImpl<_MenuItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenuItemToJson(this);
  }
}

abstract class _MenuItem implements MenuItem {
  factory _MenuItem(
      String? image,
      String? name,
      String? color,
      int id,
      @JsonKey(name: 'audio_file_name') String? audioFileName,
      bool? available,
      @JsonKey(name: 'font_name') String? fontName,
      int? price,
      List<Section>? sections) = _$_MenuItem;

  factory _MenuItem.fromJson(Map<String, dynamic> json) = _$_MenuItem.fromJson;

  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'audio_file_name')
  String? get audioFileName => throw _privateConstructorUsedError;
  @override
  bool? get available => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'font_name')
  String? get fontName => throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  List<Section>? get sections => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuItemCopyWith<_MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}
