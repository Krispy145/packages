import 'package:flutter/services.dart';

enum TheIvyCollectionMapStyles { day, night, dayNoLabels, nightNoLabels }

extension TheIvyCollectionMapStylesExtension on TheIvyCollectionMapStyles {
  String get path {
    String base = 'assets/map_styles/map_';
    switch (this) {
      case TheIvyCollectionMapStyles.day:
        base += 'light_style.json';
        break;
      case TheIvyCollectionMapStyles.night:
        base += 'dark_style.json';
        break;
      case TheIvyCollectionMapStyles.dayNoLabels:
        base += 'no_labels_light_style.json';
        break;
      case TheIvyCollectionMapStyles.nightNoLabels:
        base += 'no_labels_dark_style.json';
        break;
    }
    return base;
  }

  Future<String> load() async {
    return rootBundle.loadString(path).then((theme) {
      return theme;
    }).onError((error, stackTrace) {
      return '';
    });
  }
}
