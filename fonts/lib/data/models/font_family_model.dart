import 'package:fonts/data/models/font_variant_descriptor.dart';

class DOFontFamily {
  final String familyName;
  final Map<DOFontVariantDescriptor, String> variants;

  DOFontFamily({required this.familyName, required this.variants});
}
