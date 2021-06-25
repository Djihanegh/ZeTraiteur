// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
class _$FoodTearOff {
  const _$FoodTearOff();

  _Food call(
      String? name,
      int id,
      int? section,
      String? image,
      String? description,
      double? price,
      @JsonKey(name: 'discount_price') double? discountPrice) {
    return _Food(
      name,
      id,
      section,
      image,
      description,
      price,
      discountPrice,
    );
  }

  Food fromJson(Map<String, Object> json) {
    return Food.fromJson(json);
  }
}

/// @nodoc
const $Food = _$FoodTearOff();

/// @nodoc
mixin _$Food {
  String? get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int? get section => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_price')
  double? get discountPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      int id,
      int? section,
      String? image,
      String? description,
      double? price,
      @JsonKey(name: 'discount_price') double? discountPrice});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res> implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  final Food _value;
  // ignore: unused_field
  final $Res Function(Food) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? section = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? discountPrice = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      section: section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$FoodCopyWith(_Food value, $Res Function(_Food) then) =
      __$FoodCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      int id,
      int? section,
      String? image,
      String? description,
      double? price,
      @JsonKey(name: 'discount_price') double? discountPrice});
}

/// @nodoc
class __$FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res>
    implements _$FoodCopyWith<$Res> {
  __$FoodCopyWithImpl(_Food _value, $Res Function(_Food) _then)
      : super(_value, (v) => _then(v as _Food));

  @override
  _Food get _value => super._value as _Food;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? section = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? discountPrice = freezed,
  }) {
    return _then(_Food(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as int?,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Food implements _Food {
  _$_Food(this.name, this.id, this.section, this.image, this.description,
      this.price, @JsonKey(name: 'discount_price') this.discountPrice);

  factory _$_Food.fromJson(Map<String, dynamic> json) =>
      _$_$_FoodFromJson(json);

  @override
  final String? name;
  @override
  final int id;
  @override
  final int? section;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final double? price;
  @override
  @JsonKey(name: 'discount_price')
  final double? discountPrice;

  @override
  String toString() {
    return 'Food(name: $name, id: $id, section: $section, image: $image, description: $description, price: $price, discountPrice: $discountPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Food &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.section, section) ||
                const DeepCollectionEquality()
                    .equals(other.section, section)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountPrice, discountPrice) ||
                const DeepCollectionEquality()
                    .equals(other.discountPrice, discountPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(section) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountPrice);

  @JsonKey(ignore: true)
  @override
  _$FoodCopyWith<_Food> get copyWith =>
      __$FoodCopyWithImpl<_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FoodToJson(this);
  }
}

abstract class _Food implements Food {
  factory _Food(
      String? name,
      int id,
      int? section,
      String? image,
      String? description,
      double? price,
      @JsonKey(name: 'discount_price') double? discountPrice) = _$_Food;

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int? get section => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'discount_price')
  double? get discountPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FoodCopyWith<_Food> get copyWith => throw _privateConstructorUsedError;
}
