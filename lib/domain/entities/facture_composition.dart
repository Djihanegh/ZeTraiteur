import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ze_traiteur/domain/entities/food.dart';

part 'facture_composition.freezed.dart';
part 'facture_composition.g.dart';

@freezed
class FactureComposition with _$FactureComposition {
  factory FactureComposition(
      @JsonKey(name:"selected_foods_list") List<Food>? selectedFoods,
      @JsonKey(name:"extras_list") List<Food>  extras,
      ) = _FactureComposition;
  static const fromJsonFactory = _$FactureCompositionFromJson;
  factory FactureComposition.fromJson(Map<String, dynamic> json) =>
      _$FactureCompositionFromJson(json);
}
