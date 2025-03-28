import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:theme/app/app.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

part "store.g.dart";

/// [ColorSchemesStore] is a class that uses [_ColorSchemesStore] to manage state of the colorSchemes feature.
class ColorSchemesStore = _ColorSchemesStore with _$ColorSchemesStore;

/// [_ColorSchemesStore] is a class that manages the state of the colorSchemes feature.
abstract class _ColorSchemesStore with Store {
  /// [selectedColor] is a property that stores the selected color from the current scheme.
  @observable
  // ignore: prefer_const_constructors
  MapEntry<String, dynamic> selectedColor =
      AppTheme.currentColorModel!.toMap().entries.first;

  /// [selectedColor] is a method that sets the selected color from the current scheme.
  @action
  void setSelectedColor(MapEntry<String, dynamic> value) {
    selectedColor = value;
    AppLogger.print("selectedColor: $selectedColor", [ThemeLoggers.colors]);
  }

  /// [setColorModel] is a method that sets the current model.
  @action
  ColorModel setColorModel() {
    try {
      final currentColorModel = AppTheme.currentColorModel!;
      Map<String, dynamic> jsonModel;

      jsonModel = currentColorModel.toMap();

      jsonModel[selectedColor.key] = selectedColor.value;
      return ColorModel.fromMap(jsonModel);
    } catch (e, stackTrace) {
      debugPrint("setColorModel: $e, $stackTrace");
      return ColorModel.fromMap({});
    }
  }
}
