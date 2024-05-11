import "package:flutter/foundation.dart";
import "package:fonts/data/models/font_descriptor_and_url.dart";

typedef LoadingFontData = Future<ByteData?>;

/// [FontsDataSource] is an abstract class that defines the basic CRUD operations for the [ByteData] entity.
mixin FontsDataSource {
  LoadingFontData? loadFont(DOFontVariantAndUrl fontVariantAndUrl);
}
