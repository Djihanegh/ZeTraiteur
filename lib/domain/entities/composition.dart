import 'package:freezed_annotation/freezed_annotation.dart';
part 'composition.freezed.dart';
part 'composition.g.dart';

@freezed
class Composition with _$Composition {
  factory Composition(
    int menu,
   @JsonKey(name: 'selected_foods') List<int> selectedFoods,
    List<int> extras,
  ) = _Composition;
  static const fromJsonFactory = _$CompositionFromJson;
  factory Composition.fromJson(Map<String, dynamic> json) =>
      _$CompositionFromJson(json);

      
}
