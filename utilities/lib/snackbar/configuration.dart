import "package:flutter/material.dart";
import "package:utilities/snackbar/style.dart";

/// [SnackbarConfiguration] is the configuration that will be used to display a snackbar.
class SnackbarConfiguration {
  /// [style] is the style that will be used for the snackbar.
  SnackbarStyle style;

  /// [color] is the color of the snackbar.
  Color? color;

  /// [title] is the title of the snackbar.
  String title;

  /// [subtitle] is the subtitle of the snackbar.
  String? subtitle;

  /// [titleColor] is the color of the title of the snackbar.
  Color? titleColor;

  /// [subtitleColor] is the color of the subtitle of the snackbar.
  Color? subtitleColor;

  /// [duration] is the duration of the snackbar.
  Duration? duration;

  /// [leadingIcon] is the leading icon of the snackbar.
  Widget? leadingIcon;

  /// [trailingIcon] is the trailing icon of the snackbar.
  Widget? trailingIcon;

  /// [onTap] is the function that will be called when the snackbar is tapped.
  void Function()? onTap;

  /// [progress] is the progress of the snackbar.
  double? progress;

  /// [progressBarColor] is the color of the progress bar of the snackbar.
  Color? progressBarColor;

  SnackbarConfiguration._({
    required this.title,
    this.style = SnackbarStyle.information,
    this.color,
    this.subtitle,
    this.titleColor,
    this.subtitleColor,
    this.duration,
    this.leadingIcon,
    this.trailingIcon,
    this.onTap,
    this.progress,
    this.progressBarColor,
  });

  /// [SnackbarConfiguration.information] is a factory method that returns a [SnackbarConfiguration] with the [SnackbarStyle.information] style.
  factory SnackbarConfiguration.information({
    required String title,
    String? subtitle,
    bool withLeadingIcon = true,

    /// [color] is the color of the snackbar
    /// If [color] is null, the color will be the information color of the theme
    Color? color,
    Color? titleColor = Colors.white,
    Color? subtitleColor = Colors.grey,
    Duration? duration = const Duration(seconds: 3),
    Widget leadingIcon = const Icon(
      Icons.info_outline,
      color: Colors.white,
    ),
    Widget? trailingIcon,
    void Function()? onTap,
  }) {
    final leadingInfoIcon = withLeadingIcon ? leadingIcon : null;
    return SnackbarConfiguration._(
      color: color,
      title: title,
      subtitle: subtitle,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      duration: duration,
      leadingIcon: leadingInfoIcon,
      trailingIcon: trailingIcon,
      onTap: onTap,
    );
  }

  /// [SnackbarConfiguration.confirmation] is a factory method that returns a [SnackbarConfiguration] with the [SnackbarStyle.confirmation] style.
  factory SnackbarConfiguration.confirmation({
    required String title,
    String? subtitle,
    bool withLeadingIcon = true,

    /// [color] is the color of the snackbar
    /// If [color] is null, the color will be the confirmation color of the theme
    Color? color,
    Color? titleColor = Colors.white,
    Color? subtitleColor = Colors.grey,
    Duration? duration = const Duration(seconds: 3),
    Widget leadingIcon = const Icon(
      Icons.check_circle_outline,
      color: Colors.white,
    ),
    Widget? trailingIcon,
    void Function()? onTap,
  }) {
    final leadingConfirmationIcon = withLeadingIcon ? leadingIcon : null;
    return SnackbarConfiguration._(
      style: SnackbarStyle.confirmation,
      color: color,
      title: title,
      subtitle: subtitle,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      duration: duration,
      leadingIcon: leadingConfirmationIcon,
      trailingIcon: trailingIcon,
      onTap: onTap,
    );
  }

  /// [SnackbarConfiguration.warning] is a factory method that returns a [SnackbarConfiguration] with the [SnackbarStyle.warning] style.
  factory SnackbarConfiguration.warning({
    required String title,
    String? subtitle,
    bool withLeadingIcon = true,

    /// [color] is the color of the snackbar
    /// If [color] is null, the color will be the warning color of the theme
    Color? color,
    Color? titleColor = Colors.white,
    Color? subtitleColor = Colors.grey,
    Duration? duration = const Duration(seconds: 3),
    Widget leadingIcon = const Icon(
      Icons.warning_amber_outlined,
      color: Colors.white,
    ),
    Widget? trailingIcon,
    void Function()? onTap,
  }) {
    final leadingWarningIcon = withLeadingIcon ? leadingIcon : null;
    return SnackbarConfiguration._(
      style: SnackbarStyle.warning,
      color: color,
      title: title,
      subtitle: subtitle,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      duration: duration,
      leadingIcon: leadingWarningIcon,
      trailingIcon: trailingIcon,
      onTap: onTap,
    );
  }

  /// [SnackbarConfiguration.error] is a factory method that returns a [SnackbarConfiguration] with the [SnackbarStyle.error] style.
  factory SnackbarConfiguration.error({
    required String title,
    String? subtitle,
    bool withLeadingIcon = true,

    /// [color] is the color of the snackbar
    /// If [color] is null, the color will be the error color of the theme
    Color? color,
    Color? titleColor = Colors.white,
    Color? subtitleColor = Colors.grey,
    Duration? duration = const Duration(seconds: 3),
    Widget leadingIcon = const Icon(
      Icons.error_outline,
      color: Colors.white,
    ),
    Widget? trailingIcon,
    void Function()? onTap,
  }) {
    final leadingErrorIcon = withLeadingIcon ? leadingIcon : null;
    return SnackbarConfiguration._(
      style: SnackbarStyle.error,
      color: color,
      title: title,
      subtitle: subtitle,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      duration: duration,
      leadingIcon: leadingErrorIcon,
      trailingIcon: trailingIcon,
      onTap: onTap,
    );
  }

  /// [SnackbarConfiguration.theme] is a factory method that returns a [SnackbarConfiguration] with the [SnackbarStyle.theme] style.
  factory SnackbarConfiguration.theme({
    required String title,
    String? subtitle,
    bool withLeadingIcon = true,

    /// [color] is the color of the snackbar
    /// If [color] is null, the color will be the primary color of the theme
    Color? color,
    Color? titleColor = Colors.white,
    Color? subtitleColor = Colors.grey,
    Duration? duration = const Duration(seconds: 3),
    Widget? leadingIcon,
    Widget? trailingIcon,
    void Function()? onTap,
  }) {
    final leadingInfoIcon = withLeadingIcon ? leadingIcon : null;
    return SnackbarConfiguration._(
      style: SnackbarStyle.theme,
      color: color,
      title: title,
      subtitle: subtitle,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      duration: duration,
      leadingIcon: leadingInfoIcon,
      trailingIcon: trailingIcon,
      onTap: onTap,
    );
  }

  /// [SnackbarConfiguration.saved] is a factory method that returns a [SnackbarConfiguration] with the [SnackbarStyle.saved] style.
  factory SnackbarConfiguration.saved({
    required String title,
    String? subtitle,
    bool withLeadingIcon = true,

    /// [color] is the color of the snackbar
    /// If [color] is null, the color will be the secondary color of the theme
    Color? color,
    Color? titleColor = Colors.white,
    Color? subtitleColor = Colors.grey,
    Duration? duration = const Duration(seconds: 3),
    Widget leadingIcon = const Icon(
      Icons.check_circle_outline,
      color: Colors.white,
    ),
    Widget? trailingIcon,
    void Function()? onTap,
  }) {
    final leadingInfoIcon = withLeadingIcon ? leadingIcon : null;
    return SnackbarConfiguration._(
      style: SnackbarStyle.saved,
      color: color,
      title: title,
      subtitle: subtitle,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      duration: duration,
      leadingIcon: leadingInfoIcon,
      trailingIcon: trailingIcon,
      onTap: onTap,
    );
  }

  /// [SnackbarConfiguration.progress] is a factory method that returns a [SnackbarConfiguration] with the [SnackbarStyle.progress] style.
  factory SnackbarConfiguration.progress({
    required String title,
    String? subtitle,
    bool withLeadingIcon = true,

    /// [color] is the color of the snackbar
    /// If [color] is null, the color will be the secondary color of the theme
    Color? color,
    Color? titleColor = Colors.white,
    Color? subtitleColor = Colors.grey,
    Duration? duration = const Duration(seconds: 3),
    Widget leadingIcon = const Icon(
      Icons.info_outline,
      color: Colors.white,
    ),
    Widget? trailingIcon,
    void Function()? onTap,
    double? progress,
    Color? progressBarColor = Colors.white,
  }) {
    final leadingInfoIcon = withLeadingIcon ? leadingIcon : null;
    return SnackbarConfiguration._(
      style: SnackbarStyle.progress,
      color: color,
      title: title,
      subtitle: subtitle,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      duration: duration,
      leadingIcon: leadingInfoIcon,
      trailingIcon: trailingIcon,
      onTap: onTap,
      progress: progress,
      progressBarColor: progressBarColor,
    );
  }

  /// [copyWith] is a method that returns a copy of the [SnackbarConfiguration] with the new values.
  SnackbarConfiguration copyWith({
    SnackbarStyle? style,
    Color? color,
    String? title,
    String? subtitle,
    Color? titleColor,
    Color? subtitleColor,
    Duration? duration,
    Widget? leadingIcon,
    Widget? trailingIcon,
    void Function()? onTap,
    double? progress,
    Color? progressBarColor,
  }) {
    return SnackbarConfiguration._(
      style: style ?? this.style,
      color: color ?? this.color,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      titleColor: titleColor ?? this.titleColor,
      subtitleColor: subtitleColor ?? this.subtitleColor,
      duration: duration ?? this.duration,
      leadingIcon: leadingIcon ?? this.leadingIcon,
      trailingIcon: trailingIcon ?? this.trailingIcon,
      onTap: onTap ?? this.onTap,
      progress: progress ?? this.progress,
      progressBarColor: progressBarColor ?? this.progressBarColor,
    );
  }
}
