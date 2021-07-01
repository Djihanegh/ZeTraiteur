import 'package:freezed_annotation/freezed_annotation.dart';

import 'composition.dart';

part 'lines.freezed.dart';
part 'lines.g.dart';

@freezed
class Lines with _$Lines {
 
  factory Lines(
      int quantity,
      Composition composition,
  ) = _Lines;
  static const fromJsonFactory = _$LinesFromJson;
  factory Lines.fromJson(Map<String, dynamic> json) =>
      _$LinesFromJson(json);
}
