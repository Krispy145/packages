import "package:flutter/material.dart";
import "package:theme/app/app.dart";

/// [SnackbarStyle] is the enum that will be used to define the style of the snackbar.
enum SnackbarStyle {
  /// [information] is the style that will be used for information messages.
  information,

  /// [confirmation] is the style that will be used for confirmation messages.
  confirmation,

  /// [warning] is the style that will be used for warning messages.
  warning,

  /// [error] is the style that will be used for error messages.
  error,

  /// [theme] is the style that will be used for theme messages.
  theme,

  /// [saved] is the style that will be used for saved messages.
  saved,

  /// [progress] is the style that will be used for progress messages.
  progress;

  /// [backgroundColor] is the color that will be used for the background of the snackbar.
  Color backgroundColor() {
    final colorScheme = AppTheme.isDark ? AppTheme.colorStyles().dark : AppTheme.colorStyles().light;
    switch (this) {
      case SnackbarStyle.information:
        return colorScheme.information;
      case SnackbarStyle.confirmation:
        return colorScheme.confirmation;
      case SnackbarStyle.warning:
        return colorScheme.warning;
      case SnackbarStyle.error:
        return colorScheme.error;
      case SnackbarStyle.theme:
        return AppTheme.currentColorModel?.primary ?? Colors.blueGrey;
      case SnackbarStyle.saved:
        return AppTheme.currentColorModel?.secondary ?? Colors.blueGrey;
      case SnackbarStyle.progress:
        return AppTheme.currentColorModel?.secondary ?? Colors.blueGrey;
    }
  }

  Color? onBackgroundColor() {
    final colorScheme = AppTheme.isDark ? AppTheme.colorStyles().dark : AppTheme.colorStyles().light;
    switch (this) {
      case SnackbarStyle.information:
        return colorScheme.onInformation;
      case SnackbarStyle.confirmation:
        return colorScheme.onConfirmation;
      case SnackbarStyle.warning:
        return colorScheme.onWarning;
      case SnackbarStyle.error:
        return colorScheme.onError;
      case SnackbarStyle.theme:
        return colorScheme.onPrimary;
      case SnackbarStyle.saved:
        return colorScheme.onSecondary;
      case SnackbarStyle.progress:
        return colorScheme.onSecondary;
    }
  }
}
