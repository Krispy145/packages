import 'dart:ui';

import 'package:fonts/data/models/font_family_model.dart';
import 'package:fonts/data/models/font_variant_descriptor.dart';

typedef FontFileUrl = String;

enum DOFonts {
  lato,
  whisper,
  proximaNovaAlt,
  phonk,
  figtree;

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
      case DOFonts.phonk:
        return DOFontFamily(
          familyName: "Phonk",
          variants: {
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w400): "",
          },
        );
      case DOFonts.proximaNovaAlt:
        return DOFontFamily(
          familyName: "ProximaNovaAlt",
          variants: {
            // Normal
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w100): "https://drive.google.com/uc?export=download&id=1d5g7cX6Muf7ue5Dx8FzoRYb88HhirGrq",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w200): "https://drive.google.com/uc?export=download&id=1GGkBzGw8WT6zjd_crg15SEr_lKhuKjV6",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w400): "https://drive.google.com/uc?export=download&id=1EFaMOlorQdC5pibKvMWB9LlexT3NxD7d",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600): "https://drive.google.com/uc?export=download&id=1RxAkRfxVPKpQwsGpTYibIy0iNELIt3Vj",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w700): "https://drive.google.com/uc?export=download&id=1pnmjPTXJT4anYc3Mp5LHmeharPzsZcJU",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800): "https://drive.google.com/uc?export=download&id=14E-Acc6uwEmEl4Tydpsab0cGhzjdgmKR",
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w900): "https://drive.google.com/uc?export=download&id=1mkuozi1jqujG9XKtMShug44w4j-u4Ibv",
            // Italic
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w100): "https://drive.google.com/uc?export=download&id=1MBj0kq5sbtNX9oEdVsTFxQsKJt5Womh5",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w200): "https://drive.google.com/uc?export=download&id=1yRyamnV9CRnNR3_ukXiupsTf01UoOLry",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w400): "https://drive.google.com/uc?export=download&id=1yjqaXp8yMBVTfo_--Vf-Ash2tM5DrSRm",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w600): "https://drive.google.com/uc?export=download&id=1_b4uMk9Ohdt6DisqteGb55lyusM6zo16",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700): "https://drive.google.com/uc?export=download&id=169Xii7bqL3R4VOCuSKKAWBwz4t6XWU7g",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w800): "https://drive.google.com/uc?export=download&id=1EFG-HxOlBwFVhk1DTsRgawLON3FuQp5O",
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w900): "https://drive.google.com/uc?export=download&id=1FnPEz2cFe1XD72qSbiM8v7-G6gh7NojP",
          },
        );
      case DOFonts.figtree:
        return DOFontFamily(
          familyName: "Figtree",
          variants: {
            // Normal
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w200): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w400): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w500): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w700): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w900): null,
            // Italic
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w200): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w400): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w500): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w600): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w800): null,
            const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w900): null,
          },
        );
    }
  }
}

//  const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w100): "", //  "https://drive.google.com/uc?export=download&id=1d5g7cX6Muf7ue5Dx8FzoRYb88HhirGrq",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w200): "", //  "https://drive.google.com/uc?export=download&id=1GGkBzGw8WT6zjd_crg15SEr_lKhuKjV6",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w400): "", //  "https://drive.google.com/uc?export=download&id=1EFaMOlorQdC5pibKvMWB9LlexT3NxD7d",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600): "", //  "https://drive.google.com/uc?export=download&id=1RxAkRfxVPKpQwsGpTYibIy0iNELIt3Vj",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w700): "", //  "https://drive.google.com/uc?export=download&id=1pnmjPTXJT4anYc3Mp5LHmeharPzsZcJU",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800): "", //  "https://drive.google.com/uc?export=download&id=14E-Acc6uwEmEl4Tydpsab0cGhzjdgmKR",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.normal, fontWeight: FontWeight.w900): "", //  "https://drive.google.com/uc?export=download&id=1mkuozi1jqujG9XKtMShug44w4j-u4Ibv",
//             // Italic
//             const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w100): "", //  "https://drive.google.com/uc?export=download&id=1MBj0kq5sbtNX9oEdVsTFxQsKJt5Womh5",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w200): "", //  "https://drive.google.com/uc?export=download&id=1yRyamnV9CRnNR3_ukXiupsTf01UoOLry",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w400): "", //  "https://drive.google.com/uc?export=download&id=1yjqaXp8yMBVTfo_--Vf-Ash2tM5DrSRm",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w600): "", //  "https://drive.google.com/uc?export=download&id=1_b4uMk9Ohdt6DisqteGb55lyusM6zo16",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700): "", //  "https://drive.google.com/uc?export=download&id=169Xii7bqL3R4VOCuSKKAWBwz4t6XWU7g",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w800): "", //  "https://drive.google.com/uc?export=download&id=1EFG-HxOlBwFVhk1DTsRgawLON3FuQp5O",
//             const DOFontVariantDescriptor(fontStyle: FontStyle.italic, fontWeight: FontWeight.w900): "", //  "https://drive.google.com/uc?export=download&id=1FnPEz2cFe1XD72qSbiM8v7-G6gh7NojP",