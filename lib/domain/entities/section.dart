import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'food.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  factory Section(
      int? position,
      String? name,
      int id,
      List<Food>? foods) = _Section;
  static const fromJsonFactory = _$SectionFromJson;
  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}
