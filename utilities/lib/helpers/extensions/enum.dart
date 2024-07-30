import "package:utilities/helpers/extensions/string.dart";

extension EnumExtension on Enum {
  String get displayName => name.camelCaseToTitleCase();
}
