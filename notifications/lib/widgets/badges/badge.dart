import "package:badges/badges.dart" as badges;
import "package:flutter/material.dart";
import "package:notifications/widgets/badges/badge_style.dart";

/// [NotificationBadge] is a widget that allows you to add a notification badge to a widget.
class NotificationBadge extends StatelessWidget {
  /// [icon] is the icon of the notification badge.
  final Icon? icon;

  /// [count] is the count of the notification badge.
  final int? count;

  /// [badge] is the badge of the notification badge.
  final Widget? badge;

  /// [dot] is the dot of the notification badge.
  final bool dot;

  /// [emoji] is the emoji of the notification badge.
  final String? emoji;

  /// [badgeStyle] is the style of the notification badge.
  final NotificationBadgeStyle? badgeStyle;

  /// [child] is the child of the notification badge.
  final Widget child;

  /// [onTap] is the onTap function of the notification badge.
  final void Function()? onTap;

  /// [textStyle] is the text style of the notification badge.
  final TextStyle? textStyle;

  /// [showBadge] is the show badge of the notification badge.
  final bool showBadge;

  /// [NotificationBadge] [icon] named constructor.
  const NotificationBadge.icon({
    super.key,
    this.icon,
    this.onTap,
    this.badgeStyle,
    this.showBadge = false,
    required this.child,
  })  : count = null,
        badge = null,
        textStyle = null,
        dot = false,
        emoji = null;

  /// [NotificationBadge] [count] named constructor.
  const NotificationBadge.count({
    super.key,
    required this.count,
    this.onTap,
    this.badgeStyle,
    this.textStyle,
    this.showBadge = false,
    required this.child,
  })  : icon = null,
        badge = null,
        dot = false,
        emoji = null;

  /// [NotificationBadge] custom [badge] named constructor.
  const NotificationBadge.custom({
    super.key,
    this.badge,
    this.onTap,
    this.badgeStyle,
    this.showBadge = false,
    required this.child,
  })  : icon = null,
        count = null,
        dot = false,
        textStyle = null,
        emoji = null;

  /// [NotificationBadge] [dot] named constructor.
  const NotificationBadge.dot({
    super.key,
    this.onTap,
    this.badgeStyle,
    this.showBadge = false,
    required this.child,
  })  : icon = null,
        count = null,
        textStyle = null,
        badge = null,
        dot = true,
        emoji = null;

  /// [NotificationBadge] [emoji] named constructor.
  const NotificationBadge.emoji({
    super.key,
    this.emoji,
    this.onTap,
    this.badgeStyle,
    this.showBadge = false,
    required this.child,
  })  : icon = null,
        count = null,
        textStyle = null,
        badge = null,
        dot = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: badges.Badge(
        position: badgeStyle?.position ??
            badges.BadgePosition.topEnd(top: 0, end: -8),
        showBadge: showBadge,
        onTap: onTap,
        badgeContent: _buildBadgeContent(context),
        badgeAnimation:
            badgeStyle?.animation ?? const badges.BadgeAnimation.slide(),
        badgeStyle: badgeStyle ?? NotificationBadgeStyle.fromTheme(context),
        child: GestureDetector(
          onTap: onTap,
          child: Center(child: child),
        ),
      ),
    );
  }

  Widget _buildBadgeContent(BuildContext context) {
    if (icon != null) {
      return icon!;
    } else if (count != null) {
      return Text(
        count.toString(),
        style: textStyle ??
            Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
      );
    } else if (badge != null) {
      return badge!;
    } else if (dot) {
      return SizedBox(
        width: 10,
        height: 10,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: badgeStyle?.badgeColor ??
                NotificationBadgeStyle.fromTheme(context).badgeColor,
          ),
        ),
      );
    } else if (emoji != null) {
      return Text(emoji!);
    } else {
      return const SizedBox.shrink();
    }
  }
}
