// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facture_composition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FactureComposition _$_$_FactureCompositionFromJson(
    Map<String, dynamic> json) {
  return _$_FactureComposition(
    (json['selected_foods_list'] as List<dynamic>?)
        ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['extras_list'] as List<dynamic>)
        .map((e) => Food.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FactureCompositionToJson(
        _$_FactureComposition instance) =>
    <String, dynamic>{
      'selected_foods_list': instance.selectedFoods,
      'extras_list': instance.extras,
    };
