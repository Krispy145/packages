import 'dart:ui';

import 'package:fonts/data/models/font_family_model.dart';
import 'package:fonts/data/models/font_variant_descriptor.dart';

typedef FontFileUrl = String;

enum DOFonts {
  lato,
  whisper,
  proximaNovaAlt;

  String get name => family.familyName;

  DOFontFamily get family {
    switch (this) {
      case DOFonts.lato:
        return DOFontFamily(
          familyName: "Lato",
          variants: {
            // Normal
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w100): "https://fonts.gstatic.com/s/lato/v24/S6u8w4BMUTPHh30AXC-qNiXg7Q.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w300): "https://fonts.gstatic.com/s/lato/v24/S6u9w4BMUTPHh7USSwiPGQ3q5d0.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w400): "https://fonts.gstatic.com/s/lato/v24/S6uyw4BMUTPHjx4wXiWtFCc.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w700): "https://fonts.gstatic.com/s/lato/v24/S6u9w4BMUTPHh6UVSwiPGQ3q5d0.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w900): "https://fonts.gstatic.com/s/lato/v24/S6u9w4BMUTPHh50XSwiPGQ3q5d0.woff2",
            // Italic
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w100): "https://fonts.gstatic.com/s/lato/v24/S6u-w4BMUTPHjxsIPx-oPCLC79U1.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w300): "https://fonts.gstatic.com/s/lato/v24/S6u_w4BMUTPHjxsI9w2_Gwftx9897g.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w400): "https://fonts.gstatic.com/s/lato/v24/S6u8w4BMUTPHjxsAXC-qNiXg7Q.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700): "https://fonts.gstatic.com/s/lato/v24/S6u_w4BMUTPHjxsI5wq_Gwftx9897g.woff2",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w900): "https://fonts.gstatic.com/s/lato/v24/S6u_w4BMUTPHjxsI3wi_Gwftx9897g.woff2",
          },
        );
      case DOFonts.whisper:
        return DOFontFamily(
          familyName: "Whisper",
          variants: {
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w400): "https://fonts.gstatic.com/s/whisper/v5/q5uHsoqtKftx74K9qi5IBj5eiYQ.woff2",
          },
        );
      case DOFonts.proximaNovaAlt:
        return DOFontFamily(
          familyName: "ProximaNovaAlt",
          variants: {
            // Normal
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w100): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w200): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w400): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w700): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w900): "",
            // Italic
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w100): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w200): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w400): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w600): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w800): "",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w900): "",
          },
        );
    }
  }
}
