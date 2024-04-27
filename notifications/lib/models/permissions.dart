import "package:freezed_annotation/freezed_annotation.dart";

part "permissions.freezed.dart";
part "permissions.g.dart";

/// [NotificationPermissions] is the permissions for NotificationsStore.
@freezed
class NotificationPermissions with _$NotificationPermissions {
  /// [NotificationPermissions] constructor.
  const factory NotificationPermissions({
    @Default(true) bool alert,
    @Default(false) bool announcement,
    @Default(true) bool badge,
    @Default(false) bool carPlay,
    @Default(false) bool criticalAlert,
    @Default(false) bool provisional,
    @Default(true) bool sound,
    String? webVapidKey,
  }) = _NotificationPermissions;

  /// [NotificationPermissions] constructor from JSON.
  factory NotificationPermissions.fromJson(Map<String, dynamic> json) =>
      _$NotificationPermissionsFromJson(json);
}
