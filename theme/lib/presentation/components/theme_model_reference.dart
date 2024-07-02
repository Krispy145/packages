import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/typedefs.dart";

part "theme_model_reference.mapper.dart";

@MappableClass()
class ThemeModelReference with ThemeModelReferenceMappable {
  final UUID themeId;
  final String name;

  const ThemeModelReference({
    required this.themeId,
    required this.name,
  });

  static const empty = ThemeModelReference(themeId: "", name: "");

  static const fromMap = ThemeModelReferenceMapper.fromMap;
  static const fromJson = ThemeModelReferenceMapper.fromJson;
}
