import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/data/models/colors/color_model.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

/// [ColorSchemesStore] is a class that uses [_ColorSchemesStore] to manage state of the colorSchemes feature.
class ColorSchemesStore = _ColorSchemesStore with _$ColorSchemesStore;

/// [_ColorSchemesStore] is a class that manages the state of the colorSchemes feature.
abstract class _ColorSchemesStore with Store {
  /// [selectedColor] is a property that stores the selected color from the current scheme.
  @observable
  // ignore: prefer_const_constructors
  MapEntry<String, dynamic> selectedColor = AppTheme.colorStyles().toJson().entries.first;

  /// [selectedColor] is a method that sets the selected color from the current scheme.
  @action
  void setSelectedColor(MapEntry<String, dynamic> value) {
    selectedColor = value;
    AppLogger.print('selectedColor: $selectedColor', [PackageFeatures.theme]);
  }

  /// [setColorModel] is a method that sets the current model.
  @action
  ColorModel setColorModel() {
    try {
      final colorSchemes = AppTheme.colorStyles();
      Map<String, dynamic> jsonModel;
      if (AppTheme.isDark) {
        jsonModel = colorSchemes.dark.toJson();
      } else {
        jsonModel = colorSchemes.light.toJson();
      }
      jsonModel[selectedColor.key] = selectedColor.value;
      return ColorModel.fromJson(jsonModel);
    } catch (e, stackTrace) {
      debugPrint('setColorModel: $e, $stackTrace');
      return ColorModel.fromJson({});
    }
  }
}
