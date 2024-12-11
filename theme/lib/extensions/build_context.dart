import "package:flutter/material.dart";
import "package:theme/app/app.dart";
import "package:theme/data/models/colors/color_model.dart";

extension BuildContextExtension on BuildContext {
  TextTheme get textTheme => AppTheme.textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  ColorModel? get colorModel => AppTheme.currentColorModel;
  ThemeData get theme => AppTheme.currentTheme;
}
