import "package:utilities/data/typedefs.dart";

// part "reference_model.mapper.dart";

// @MappableClass(caseStyle: CaseStyle.snakeCase, ignoreNull: true)
// class ReferenceModel with ReferenceModelMappable {
class DropdownItemModel {
  final UUID id;
  final String title;
  final String? subtitle;
  final URL? image;

  DropdownItemModel({
    required this.id,
    required this.title,
    this.subtitle,
    this.image,
  });

  // static const fromMap = ReferenceModelMapper.fromMap;
  // static const fromJson = ReferenceModelMapper.fromJson;
}
