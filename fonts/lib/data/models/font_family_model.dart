import "package:fonts/data/models/font_variant_descriptor.dart";

class PLSFontFamily {
  final String familyName;
  final Map<PLSFontVariantDescriptor, String?> variants;

  PLSFontFamily({required this.familyName, required this.variants});
}
