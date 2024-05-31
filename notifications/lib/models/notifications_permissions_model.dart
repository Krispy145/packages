import "package:dart_mappable/dart_mappable.dart";

part "notifications_permissions_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class NotificationsPermissionsModel with NotificationsPermissionsModelMappable {
  @MappableValue(true)
  final bool alert;
  @MappableValue(false)
  final bool announcement;
  @MappableValue(true)
  final bool badge;
  @MappableValue(false)
  final bool carPlay;
  @MappableValue(false)
  final bool criticalAlert;
  @MappableValue(false)
  final bool provisional;
  @MappableValue(true)
  final bool sound;
  final String? webVapidKey;

  const NotificationsPermissionsModel({
    required this.alert,
    required this.announcement,
    required this.badge,
    required this.carPlay,
    required this.criticalAlert,
    required this.provisional,
    required this.sound,
    required this.webVapidKey,
  });

  static const fromMap = NotificationsPermissionsModelMapper.fromMap;
  static const fromJson = NotificationsPermissionsModelMapper.fromJson;

  // static const empty = NotificationsPermissionsModel(id: "");

  // static const permissionsOne = NotificationsPermissionsModel(
  // id: "permissionsOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const permissionsTwo = NotificationsPermissionsModel(
  // id: "permissionsTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const permissionsThree = NotificationsPermissionsModel(
  // id: "permissionsThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  static final List<NotificationsPermissionsModel> fakeData = [
    // permissionsOne,
    // permissionsTwo,
    // permissionsThree,
  ];
}

// import "package:freezed_annotation/freezed_annotation.dart";

// part "permissions.freezed.dart";
// part "permissions.g.dart";

// /// [NotificationPermissions] is the permissions for NotificationsStore.
// @freezed
// class NotificationPermissions with _$NotificationPermissions {
//   /// [NotificationPermissions] constructor.
//   const factory NotificationPermissions({
//     @Default(true) bool alert,
//     @Default(false) bool announcement,
//     @Default(true) bool badge,
//     @Default(false) bool carPlay,
//     @Default(false) bool criticalAlert,
//     @Default(false) bool provisional,
//     @Default(true) bool sound,
//     String? webVapidKey,
//   }) = _NotificationPermissions;

//   /// [NotificationPermissions] constructor from JSON.
//   factory NotificationPermissions.fromJson(Map<String, dynamic> json) =>
//       _$NotificationPermissionsFromJson(json);
// }
