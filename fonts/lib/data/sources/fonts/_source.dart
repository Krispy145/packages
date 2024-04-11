import 'package:flutter/foundation.dart';
import 'package:fonts/data/models/font_variant_descriptor.dart';

/// [FontsDataSource] is an abstract class that defines the basic CRUD operations for the [ByteData] entity.
abstract class FontsDataSource {
  ByteData getFontByteData(String fontFamilyName, DOFontVariantDescriptor fontVariant);
}
