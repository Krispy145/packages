// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationPermissions _$NotificationPermissionsFromJson(
    Map<String, dynamic> json) {
  return _NotificationPermissions.fromJson(json);
}

/// @nodoc
mixin _$NotificationPermissions {
  bool get alert => throw _privateConstructorUsedError;
  bool get announcement => throw _privateConstructorUsedError;
  bool get badge => throw _privateConstructorUsedError;
  bool get carPlay => throw _privateConstructorUsedError;
  bool get criticalAlert => throw _privateConstructorUsedError;
  bool get provisional => throw _privateConstructorUsedError;
  bool get sound => throw _privateConstructorUsedError;
  String? get webVapidKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationPermissionsCopyWith<NotificationPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPermissionsCopyWith<$Res> {
  factory $NotificationPermissionsCopyWith(NotificationPermissions value,
          $Res Function(NotificationPermissions) then) =
      _$NotificationPermissionsCopyWithImpl<$Res, NotificationPermissions>;
  @useResult
  $Res call(
      {bool alert,
      bool announcement,
      bool badge,
      bool carPlay,
      bool criticalAlert,
      bool provisional,
      bool sound,
      String? webVapidKey});
}

/// @nodoc
class _$NotificationPermissionsCopyWithImpl<$Res,
        $Val extends NotificationPermissions>
    implements $NotificationPermissionsCopyWith<$Res> {
  _$NotificationPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
    Object? announcement = null,
    Object? badge = null,
    Object? carPlay = null,
    Object? criticalAlert = null,
    Object? provisional = null,
    Object? sound = null,
    Object? webVapidKey = freezed,
  }) {
    return _then(_value.copyWith(
      alert: null == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as bool,
      announcement: null == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as bool,
      badge: null == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as bool,
      carPlay: null == carPlay
          ? _value.carPlay
          : carPlay // ignore: cast_nullable_to_non_nullable
              as bool,
      criticalAlert: null == criticalAlert
          ? _value.criticalAlert
          : criticalAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      provisional: null == provisional
          ? _value.provisional
          : provisional // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      webVapidKey: freezed == webVapidKey
          ? _value.webVapidKey
          : webVapidKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPermissionsImplCopyWith<$Res>
    implements $NotificationPermissionsCopyWith<$Res> {
  factory _$$NotificationPermissionsImplCopyWith(
          _$NotificationPermissionsImpl value,
          $Res Function(_$NotificationPermissionsImpl) then) =
      __$$NotificationPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool alert,
      bool announcement,
      bool badge,
      bool carPlay,
      bool criticalAlert,
      bool provisional,
      bool sound,
      String? webVapidKey});
}

/// @nodoc
class __$$NotificationPermissionsImplCopyWithImpl<$Res>
    extends _$NotificationPermissionsCopyWithImpl<$Res,
        _$NotificationPermissionsImpl>
    implements _$$NotificationPermissionsImplCopyWith<$Res> {
  __$$NotificationPermissionsImplCopyWithImpl(
      _$NotificationPermissionsImpl _value,
      $Res Function(_$NotificationPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
    Object? announcement = null,
    Object? badge = null,
    Object? carPlay = null,
    Object? criticalAlert = null,
    Object? provisional = null,
    Object? sound = null,
    Object? webVapidKey = freezed,
  }) {
    return _then(_$NotificationPermissionsImpl(
      alert: null == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as bool,
      announcement: null == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as bool,
      badge: null == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as bool,
      carPlay: null == carPlay
          ? _value.carPlay
          : carPlay // ignore: cast_nullable_to_non_nullable
              as bool,
      criticalAlert: null == criticalAlert
          ? _value.criticalAlert
          : criticalAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      provisional: null == provisional
          ? _value.provisional
          : provisional // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      webVapidKey: freezed == webVapidKey
          ? _value.webVapidKey
          : webVapidKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPermissionsImpl implements _NotificationPermissions {
  const _$NotificationPermissionsImpl(
      {this.alert = true,
      this.announcement = false,
      this.badge = true,
      this.carPlay = false,
      this.criticalAlert = false,
      this.provisional = false,
      this.sound = true,
      this.webVapidKey});

  factory _$NotificationPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPermissionsImplFromJson(json);

  @override
  @JsonKey()
  final bool alert;
  @override
  @JsonKey()
  final bool announcement;
  @override
  @JsonKey()
  final bool badge;
  @override
  @JsonKey()
  final bool carPlay;
  @override
  @JsonKey()
  final bool criticalAlert;
  @override
  @JsonKey()
  final bool provisional;
  @override
  @JsonKey()
  final bool sound;
  @override
  final String? webVapidKey;

  @override
  String toString() {
    return 'NotificationPermissions(alert: $alert, announcement: $announcement, badge: $badge, carPlay: $carPlay, criticalAlert: $criticalAlert, provisional: $provisional, sound: $sound, webVapidKey: $webVapidKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPermissionsImpl &&
            (identical(other.alert, alert) || other.alert == alert) &&
            (identical(other.announcement, announcement) ||
                other.announcement == announcement) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.carPlay, carPlay) || other.carPlay == carPlay) &&
            (identical(other.criticalAlert, criticalAlert) ||
                other.criticalAlert == criticalAlert) &&
            (identical(other.provisional, provisional) ||
                other.provisional == provisional) &&
            (identical(other.sound, sound) || other.sound == sound) &&
            (identical(other.webVapidKey, webVapidKey) ||
                other.webVapidKey == webVapidKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, alert, announcement, badge,
      carPlay, criticalAlert, provisional, sound, webVapidKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPermissionsImplCopyWith<_$NotificationPermissionsImpl>
      get copyWith => __$$NotificationPermissionsImplCopyWithImpl<
          _$NotificationPermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPermissionsImplToJson(
      this,
    );
  }
}

abstract class _NotificationPermissions implements NotificationPermissions {
  const factory _NotificationPermissions(
      {final bool alert,
      final bool announcement,
      final bool badge,
      final bool carPlay,
      final bool criticalAlert,
      final bool provisional,
      final bool sound,
      final String? webVapidKey}) = _$NotificationPermissionsImpl;

  factory _NotificationPermissions.fromJson(Map<String, dynamic> json) =
      _$NotificationPermissionsImpl.fromJson;

  @override
  bool get alert;
  @override
  bool get announcement;
  @override
  bool get badge;
  @override
  bool get carPlay;
  @override
  bool get criticalAlert;
  @override
  bool get provisional;
  @override
  bool get sound;
  @override
  String? get webVapidKey;
  @override
  @JsonKey(ignore: true)
  _$$NotificationPermissionsImplCopyWith<_$NotificationPermissionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
