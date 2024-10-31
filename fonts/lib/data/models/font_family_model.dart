import "package:fonts/data/models/font_variant_descriptor.dart";

class LYFontFamily {
  final String familyName;
  final Map<LYFontVariantDescriptor, String?> variants;

  LYFontFamily({required this.familyName, required this.variants});
}
