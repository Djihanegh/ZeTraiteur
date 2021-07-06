// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_composition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingCartComposition _$_$_ShoppingCartCompositionFromJson(
    Map<String, dynamic> json) {
  return _$_ShoppingCartComposition(
    json['menu'] as String?,
    (json['selectedFoods'] as List<dynamic>?)
        ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['extras'] as List<dynamic>)
        .map((e) => Food.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ShoppingCartCompositionToJson(
        _$_ShoppingCartComposition instance) =>
    <String, dynamic>{
      'menu': instance.menu,
      'selectedFoods': instance.selectedFoods,
      'extras': instance.extras,
    };
