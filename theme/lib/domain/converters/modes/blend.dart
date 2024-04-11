// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// enum BlendModeType {
//   clear,
//   src,
//   dst,
//   srcOver,
//   dstOver,
//   srcIn,
//   dstIn,
//   srcOut,
//   dstOut,
//   srcATop,
//   dstATop,
//   xor,
//   plus,
//   modulate,
//   screen,
//   overlay,
//   darken,
//   lighten,
//   colorDodge,
//   colorBurn,
//   hardLight,
//   softLight,
//   difference,
//   exclusion,
//   multiply,
//   hue,
//   saturation,
//   color,
//   luminosity,
// }

// class BlendModeConverter implements JsonConverter<BlendMode?, String?> {
//   const BlendModeConverter();

//   /// This example shows how to use the [BlendModeConverter]:
//   BlendMode? example(BlendModeType type) {
//     final json = const BlendModeConverter().toJson(_typeToBlendMode(type));
//     final blendMode = const BlendModeConverter().fromJson(json);
//     AppLogger.print(
//         "BLEND-MODE fromJson -> $blendMode", [ThemeLoggers.converters]);
//     AppLogger.print("BLEND-MODE toJson -> $json", [ThemeLoggers.converters]);
//     return blendMode;
//   }

//   BlendMode _typeToBlendMode(BlendModeType type) {
//     switch (type) {
//       case BlendModeType.clear:
//         return BlendMode.clear;
//       case BlendModeType.src:
//         return BlendMode.src;
//       case BlendModeType.dst:
//         return BlendMode.dst;
//       case BlendModeType.srcOver:
//         return BlendMode.srcOver;
//       case BlendModeType.dstOver:
//         return BlendMode.dstOver;
//       case BlendModeType.srcIn:
//         return BlendMode.srcIn;
//       case BlendModeType.dstIn:
//         return BlendMode.dstIn;
//       case BlendModeType.srcOut:
//         return BlendMode.srcOut;
//       case BlendModeType.dstOut:
//         return BlendMode.dstOut;
//       case BlendModeType.srcATop:
//         return BlendMode.srcATop;
//       case BlendModeType.dstATop:
//         return BlendMode.dstATop;
//       case BlendModeType.xor:
//         return BlendMode.xor;
//       case BlendModeType.plus:
//         return BlendMode.plus;
//       case BlendModeType.modulate:
//         return BlendMode.modulate;
//       case BlendModeType.screen:
//         return BlendMode.screen;
//       case BlendModeType.overlay:
//         return BlendMode.overlay;
//       case BlendModeType.darken:
//         return BlendMode.darken;
//       case BlendModeType.lighten:
//         return BlendMode.lighten;
//       case BlendModeType.colorDodge:
//         return BlendMode.colorDodge;
//       case BlendModeType.colorBurn:
//         return BlendMode.colorBurn;
//       case BlendModeType.hardLight:
//         return BlendMode.hardLight;
//       case BlendModeType.softLight:
//         return BlendMode.softLight;
//       case BlendModeType.difference:
//         return BlendMode.difference;
//       case BlendModeType.exclusion:
//         return BlendMode.exclusion;
//       case BlendModeType.multiply:
//         return BlendMode.multiply;
//       case BlendModeType.hue:
//         return BlendMode.hue;
//       case BlendModeType.saturation:
//         return BlendMode.saturation;
//       case BlendModeType.color:
//         return BlendMode.color;
//       case BlendModeType.luminosity:
//         return BlendMode.luminosity;
//     }
//   }

//   @override
//   BlendMode? fromJson(String? type) {
//     if (type == null) {
//       return null;
//     }
//     switch (type) {
//       case 'clear':
//         return BlendMode.clear;
//       case 'src':
//         return BlendMode.src;
//       case 'dst':
//         return BlendMode.dst;
//       case 'srcOver':
//         return BlendMode.srcOver;
//       case 'dstOver':
//         return BlendMode.dstOver;
//       case 'srcIn':
//         return BlendMode.srcIn;
//       case 'dstIn':
//         return BlendMode.dstIn;
//       case 'srcOut':
//         return BlendMode.srcOut;
//       case 'dstOut':
//         return BlendMode.dstOut;
//       case 'srcATop':
//         return BlendMode.srcATop;
//       case 'dstATop':
//         return BlendMode.dstATop;
//       case 'xor':
//         return BlendMode.xor;
//       case 'plus':
//         return BlendMode.plus;
//       case 'modulate':
//         return BlendMode.modulate;
//       case 'screen':
//         return BlendMode.screen;
//       case 'overlay':
//         return BlendMode.overlay;
//       case 'darken':
//         return BlendMode.darken;
//       case 'lighten':
//         return BlendMode.lighten;
//       case 'colorDodge':
//         return BlendMode.colorDodge;
//       case 'colorBurn':
//         return BlendMode.colorBurn;
//       case 'hardLight':
//         return BlendMode.hardLight;
//       case 'softLight':
//         return BlendMode.softLight;
//       case 'difference':
//         return BlendMode.difference;
//       case 'exclusion':
//         return BlendMode.exclusion;
//       case 'multiply':
//         return BlendMode.multiply;
//       case 'hue':
//         return BlendMode.hue;
//       case 'saturation':
//         return BlendMode.saturation;
//       case 'color':
//         return BlendMode.color;
//       case 'luminosity':
//         return BlendMode.luminosity;
//       default:
//         return null;
//     }
//   }

//   @override
//   String? toJson(BlendMode? instance) {
//     if (instance == null) {
//       return null;
//     }
//     switch (instance) {
//       case BlendMode.clear:
//         return BlendModeType.clear.name;
//       case BlendMode.src:
//         return BlendModeType.src.name;
//       case BlendMode.dst:
//         return BlendModeType.dst.name;
//       case BlendMode.srcOver:
//         return BlendModeType.srcOver.name;
//       case BlendMode.dstOver:
//         return BlendModeType.dstOver.name;
//       case BlendMode.srcIn:
//         return BlendModeType.srcIn.name;
//       case BlendMode.dstIn:
//         return BlendModeType.dstIn.name;
//       case BlendMode.srcOut:
//         return BlendModeType.srcOut.name;
//       case BlendMode.dstOut:
//         return BlendModeType.dstOut.name;
//       case BlendMode.srcATop:
//         return BlendModeType.srcATop.name;
//       case BlendMode.dstATop:
//         return BlendModeType.dstATop.name;
//       case BlendMode.xor:
//         return BlendModeType.xor.name;
//       case BlendMode.plus:
//         return BlendModeType.plus.name;
//       case BlendMode.modulate:
//         return BlendModeType.modulate.name;
//       case BlendMode.screen:
//         return BlendModeType.screen.name;
//       case BlendMode.overlay:
//         return BlendModeType.overlay.name;
//       case BlendMode.darken:
//         return BlendModeType.darken.name;
//       case BlendMode.lighten:
//         return BlendModeType.lighten.name;
//       case BlendMode.colorDodge:
//         return BlendModeType.colorDodge.name;
//       case BlendMode.colorBurn:
//         return BlendModeType.colorBurn.name;
//       case BlendMode.hardLight:
//         return BlendModeType.hardLight.name;
//       case BlendMode.softLight:
//         return BlendModeType.softLight.name;
//       case BlendMode.difference:
//         return BlendModeType.difference.name;
//       case BlendMode.exclusion:
//         return BlendModeType.exclusion.name;
//       case BlendMode.multiply:
//         return BlendModeType.multiply.name;
//       case BlendMode.hue:
//         return BlendModeType.hue.name;
//       case BlendMode.saturation:
//         return BlendModeType.saturation.name;
//       case BlendMode.color:
//         return BlendModeType.color.name;
//       case BlendMode.luminosity:
//         return BlendModeType.luminosity.name;
//     }
//   }
// }
