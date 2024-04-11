import 'package:freezed_annotation/freezed_annotation.dart';

part 'fonts_model.freezed.dart';
part 'fonts_model.g.dart';

/// [FontsModel] is a class that represents the main model.
@freezed
class FontsModel with _$FontsModel {
  /// [FontsModel] constructor.
  const factory FontsModel({
    required String id,
    String? name,
  }) = _FontsModel;

  /// [FontsModel] factory constructor.
  factory FontsModel.fromJson(Map<String, dynamic> json) =>
      _$FontsModelFromJson(json);
}
