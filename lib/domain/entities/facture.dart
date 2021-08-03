import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ze_traiteur/domain/entities/facture_composition.dart';
import 'package:ze_traiteur/domain/entities/shopping_cart_composition.dart';

part 'facture.freezed.dart';

part 'facture.g.dart';

@freezed
class Facture with _$Facture {
  factory Facture(
    int quantity,
    @JsonKey(name: "created_at") String createdAt,
    String status,
    String number,
    FactureComposition? composition,
  ) = _Facture;

  static const fromJsonFactory = _$FactureFromJson;

  factory Facture.fromJson(Map<String, dynamic> json) =>
      _$FactureFromJson(json);
}
