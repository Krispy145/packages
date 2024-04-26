import "package:badges/badges.dart";
import "package:flutter/material.dart";

/// [NotificationBadgeStyle] is a class that houses the style for the notification badge.
class NotificationBadgeStyle extends BadgeStyle {
  /// [animation] is the animation of the notification badge.
  /// defaults to `BadgeAnimation.slide()`
  final BadgeAnimation? animation;

  /// [position] is the position of the notification badge.
  /// defaults to `BadgePosition.topEnd(top: -10, end: -12)`
  final BadgePosition? position;

  /// [NotificationBadgeStyle] constructor.
  NotificationBadgeStyle({
    this.animation,
    this.position,
    super.shape,
    super.borderRadius,
    super.badgeColor,
    super.borderSide,
    super.elevation,
    super.badgeGradient,
    super.borderGradient,
    super.padding,
  });

  /// [NotificationBadgeStyle.fromTheme] is a named constructor that allows you to set the default style for the notification badge.
  NotificationBadgeStyle.fromTheme(
    BuildContext context, {
    this.animation,
    this.position,
  }) : super(badgeColor: Theme.of(context).colorScheme.inversePrimary);

  /// [copyWith] is a method that allows you to copy the style of the notification badge.
  NotificationBadgeStyle copyWith({
    BadgeAnimation? animation,
    BadgePosition? position,
    BadgeShape? shape,
    BorderRadius? borderRadius,
    Color? badgeColor,
    BorderSide? borderSide,
    double? elevation,
    BadgeGradient? badgeGradient,
    BadgeGradient? borderGradient,
    EdgeInsetsGeometry? padding,
  }) {
    return NotificationBadgeStyle(
      animation: animation ?? this.animation,
      position: position ?? this.position,
      shape: shape ?? this.shape,
      borderRadius: borderRadius ?? this.borderRadius,
      badgeColor: badgeColor ?? this.badgeColor,
      borderSide: borderSide ?? this.borderSide,
      elevation: elevation ?? this.elevation,
      badgeGradient: badgeGradient ?? this.badgeGradient,
      borderGradient: borderGradient ?? this.borderGradient,
      padding: padding ?? this.padding,
    );
  }
}
