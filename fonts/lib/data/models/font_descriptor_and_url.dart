// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'font_family_and_variant.dart';

/// Describes a Google Fonts API font.
///
/// This class mostly serves as a simple way to keep the connected font
/// information together.
class DOFontVariantAndUrl {
  const DOFontVariantAndUrl({
    required this.familyWithVariant,
    this.url,
  });

  final DOFontFamilyAndVariant familyWithVariant;
  final String? url;
}
