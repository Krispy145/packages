// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'notifications_permissions_model.dart';

class NotificationsPermissionsModelMapper
    extends ClassMapperBase<NotificationsPermissionsModel> {
  NotificationsPermissionsModelMapper._();

  static NotificationsPermissionsModelMapper? _instance;
  static NotificationsPermissionsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = NotificationsPermissionsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NotificationsPermissionsModel';

  static bool _$alert(NotificationsPermissionsModel v) => v.alert;
  static const Field<NotificationsPermissionsModel, bool> _f$alert =
      Field('alert', _$alert);
  static bool _$announcement(NotificationsPermissionsModel v) => v.announcement;
  static const Field<NotificationsPermissionsModel, bool> _f$announcement =
      Field('announcement', _$announcement);
  static bool _$badge(NotificationsPermissionsModel v) => v.badge;
  static const Field<NotificationsPermissionsModel, bool> _f$badge =
      Field('badge', _$badge);
  static bool _$carPlay(NotificationsPermissionsModel v) => v.carPlay;
  static const Field<NotificationsPermissionsModel, bool> _f$carPlay =
      Field('carPlay', _$carPlay, key: 'car_play');
  static bool _$criticalAlert(NotificationsPermissionsModel v) =>
      v.criticalAlert;
  static const Field<NotificationsPermissionsModel, bool> _f$criticalAlert =
      Field('criticalAlert', _$criticalAlert, key: 'critical_alert');
  static bool _$provisional(NotificationsPermissionsModel v) => v.provisional;
  static const Field<NotificationsPermissionsModel, bool> _f$provisional =
      Field('provisional', _$provisional);
  static bool _$sound(NotificationsPermissionsModel v) => v.sound;
  static const Field<NotificationsPermissionsModel, bool> _f$sound =
      Field('sound', _$sound);
  static String? _$webVapidKey(NotificationsPermissionsModel v) =>
      v.webVapidKey;
  static const Field<NotificationsPermissionsModel, String> _f$webVapidKey =
      Field('webVapidKey', _$webVapidKey, key: 'web_vapid_key', opt: true);

  @override
  final MappableFields<NotificationsPermissionsModel> fields = const {
    #alert: _f$alert,
    #announcement: _f$announcement,
    #badge: _f$badge,
    #carPlay: _f$carPlay,
    #criticalAlert: _f$criticalAlert,
    #provisional: _f$provisional,
    #sound: _f$sound,
    #webVapidKey: _f$webVapidKey,
  };

  static NotificationsPermissionsModel _instantiate(DecodingData data) {
    return NotificationsPermissionsModel(
        alert: data.dec(_f$alert),
        announcement: data.dec(_f$announcement),
        badge: data.dec(_f$badge),
        carPlay: data.dec(_f$carPlay),
        criticalAlert: data.dec(_f$criticalAlert),
        provisional: data.dec(_f$provisional),
        sound: data.dec(_f$sound),
        webVapidKey: data.dec(_f$webVapidKey));
  }

  @override
  final Function instantiate = _instantiate;

  static NotificationsPermissionsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NotificationsPermissionsModel>(map);
  }

  static NotificationsPermissionsModel fromJson(String json) {
    return ensureInitialized().decodeJson<NotificationsPermissionsModel>(json);
  }
}

mixin NotificationsPermissionsModelMappable {
  String toJson() {
    return NotificationsPermissionsModelMapper.ensureInitialized()
        .encodeJson<NotificationsPermissionsModel>(
            this as NotificationsPermissionsModel);
  }

  Map<String, dynamic> toMap() {
    return NotificationsPermissionsModelMapper.ensureInitialized()
        .encodeMap<NotificationsPermissionsModel>(
            this as NotificationsPermissionsModel);
  }

  NotificationsPermissionsModelCopyWith<NotificationsPermissionsModel,
          NotificationsPermissionsModel, NotificationsPermissionsModel>
      get copyWith => _NotificationsPermissionsModelCopyWithImpl(
          this as NotificationsPermissionsModel, $identity, $identity);
  @override
  String toString() {
    return NotificationsPermissionsModelMapper.ensureInitialized()
        .stringifyValue(this as NotificationsPermissionsModel);
  }

  @override
  bool operator ==(Object other) {
    return NotificationsPermissionsModelMapper.ensureInitialized()
        .equalsValue(this as NotificationsPermissionsModel, other);
  }

  @override
  int get hashCode {
    return NotificationsPermissionsModelMapper.ensureInitialized()
        .hashValue(this as NotificationsPermissionsModel);
  }
}

extension NotificationsPermissionsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotificationsPermissionsModel, $Out> {
  NotificationsPermissionsModelCopyWith<$R, NotificationsPermissionsModel, $Out>
      get $asNotificationsPermissionsModel => $base.as(
          (v, t, t2) => _NotificationsPermissionsModelCopyWithImpl(v, t, t2));
}

abstract class NotificationsPermissionsModelCopyWith<
    $R,
    $In extends NotificationsPermissionsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? alert,
      bool? announcement,
      bool? badge,
      bool? carPlay,
      bool? criticalAlert,
      bool? provisional,
      bool? sound,
      String? webVapidKey});
  NotificationsPermissionsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotificationsPermissionsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotificationsPermissionsModel, $Out>
    implements
        NotificationsPermissionsModelCopyWith<$R, NotificationsPermissionsModel,
            $Out> {
  _NotificationsPermissionsModelCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotificationsPermissionsModel> $mapper =
      NotificationsPermissionsModelMapper.ensureInitialized();
  @override
  $R call(
          {bool? alert,
          bool? announcement,
          bool? badge,
          bool? carPlay,
          bool? criticalAlert,
          bool? provisional,
          bool? sound,
          Object? webVapidKey = $none}) =>
      $apply(FieldCopyWithData({
        if (alert != null) #alert: alert,
        if (announcement != null) #announcement: announcement,
        if (badge != null) #badge: badge,
        if (carPlay != null) #carPlay: carPlay,
        if (criticalAlert != null) #criticalAlert: criticalAlert,
        if (provisional != null) #provisional: provisional,
        if (sound != null) #sound: sound,
        if (webVapidKey != $none) #webVapidKey: webVapidKey
      }));
  @override
  NotificationsPermissionsModel $make(CopyWithData data) =>
      NotificationsPermissionsModel(
          alert: data.get(#alert, or: $value.alert),
          announcement: data.get(#announcement, or: $value.announcement),
          badge: data.get(#badge, or: $value.badge),
          carPlay: data.get(#carPlay, or: $value.carPlay),
          criticalAlert: data.get(#criticalAlert, or: $value.criticalAlert),
          provisional: data.get(#provisional, or: $value.provisional),
          sound: data.get(#sound, or: $value.sound),
          webVapidKey: data.get(#webVapidKey, or: $value.webVapidKey));

  @override
  NotificationsPermissionsModelCopyWith<$R2, NotificationsPermissionsModel,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotificationsPermissionsModelCopyWithImpl($value, $cast, t);
}
