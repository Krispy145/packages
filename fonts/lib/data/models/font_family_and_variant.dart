// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:fonts/data/models/font_variant_descriptor.dart';

/// Represents a Google Fonts API variant in Flutter-specific types.
class DOFontFamilyAndVariant {
  const DOFontFamilyAndVariant({
    required this.familyName,
    required this.fontVariantDescriptor,
  });

  final String familyName;
  final DOFontVariantDescriptor fontVariantDescriptor;

  String toApiFilenamePrefix() {
    return '$familyName-${fontVariantDescriptor.toApiFilenamePart()}';
  }

  /// Returns a font family name that is modified with additional [fontWeight]
  /// and [fontStyle] descriptions.
  ///
  /// This string is used as a key to the loaded or stored fonts that come
  /// from the Google Fonts API.
  @override
  String toString() => '${familyName}_$fontVariantDescriptor';
}
