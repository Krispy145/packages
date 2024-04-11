// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// enum TileModeType {
//   clamp,
//   mirror,
//   repeated,
//   decal,
// }

// class TileModeConverter implements JsonConverter<TileMode?, String?> {
//   const TileModeConverter();

//   /// This example shows how to use the [TileModeConverter]:
//   TileMode? example(TileModeType type) {
//     final json = const TileModeConverter().toJson(_typeToTileMode(type));
//     final response = jsonDecode(json!) as Map<String, dynamic>;
//     final tileMode = const TileModeConverter().fromJson(response['tileMode'] as String?);
//     AppLogger.print(
//       "TILE-MODE fromJson -> $tileMode",
//       [ThemePackageLoggers.converters],
//     );
//     final convertedJson = const TileModeConverter().toJson(TileMode.clamp);
//     AppLogger.print(
//       "TILE-MODE toJson -> $convertedJson",
//       [ThemePackageLoggers.converters],
//     );
//     return tileMode;
//   }

//   TileMode _typeToTileMode(TileModeType type) {
//     switch (type) {
//       case TileModeType.clamp:
//         return TileMode.clamp;
//       case TileModeType.mirror:
//         return TileMode.mirror;
//       case TileModeType.repeated:
//         return TileMode.repeated;
//       case TileModeType.decal:
//         return TileMode.decal;
//     }
//   }

//   @override
//   TileMode? fromJson(String? type) {
//     if (type == null) {
//       return null;
//     }
//     switch (type) {
//       case 'clamp':
//         return TileMode.clamp;
//       case 'mirror':
//         return TileMode.mirror;
//       case 'repeated':
//         return TileMode.repeated;
//       case 'decal':
//         return TileMode.decal;
//       default:
//         return null;
//     }
//   }

//   @override
//   String? toJson(TileMode? instance) {
//     if (instance == null) {
//       return null;
//     }
//     switch (instance) {
//       case TileMode.clamp:
//         return TileModeType.clamp.name;
//       case TileMode.mirror:
//         return TileModeType.mirror.name;
//       case TileMode.repeated:
//         return TileModeType.repeated.name;
//       case TileMode.decal:
//         return TileModeType.decal.name;
//     }
//   }
// }
