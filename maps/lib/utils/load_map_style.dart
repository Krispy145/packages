// import 'package:flutter/services.dart';

// enum MapStyles {
//   day,
//   night;

//   String get _path {
//     String base = 'assets/map_styles/map_';
//     switch (this) {
//       case MapStyles.day:
//         base += 'light_style.json';
//         break;
//       case MapStyles.night:
//         base += 'dark_style.json';
//         break;
//     }
//     return base;
//   }

//   Future<String> load() async {
//     return rootBundle.loadString(_path).then((theme) {
//       return theme;
//     }).onError((error, stackTrace) {
//       return '';
//     });
//   }
// }
