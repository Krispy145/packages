// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'notification_model.dart';

class NotificationModelMapper extends ClassMapperBase<NotificationModel> {
  NotificationModelMapper._();

  static NotificationModelMapper? _instance;
  static NotificationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotificationModelMapper._());
      AppDestinationModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NotificationModel';

  static String _$id(NotificationModel v) => v.id;
  static const Field<NotificationModel, String> _f$id = Field('id', _$id);
  static int _$localId(NotificationModel v) => v.localId;
  static const Field<NotificationModel, int> _f$localId =
      Field('localId', _$localId, key: 'local_id');
  static String? _$type(NotificationModel v) => v.type;
  static const Field<NotificationModel, String> _f$type =
      Field('type', _$type, opt: true);
  static String? _$title(NotificationModel v) => v.title;
  static const Field<NotificationModel, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$body(NotificationModel v) => v.body;
  static const Field<NotificationModel, String> _f$body =
      Field('body', _$body, opt: true);
  static String? _$imageUrl(NotificationModel v) => v.imageUrl;
  static const Field<NotificationModel, String> _f$imageUrl =
      Field('imageUrl', _$imageUrl, key: 'image_url', opt: true);
  static String? _$topic(NotificationModel v) => v.topic;
  static const Field<NotificationModel, String> _f$topic =
      Field('topic', _$topic, opt: true);
  static DateTime? _$scheduledTime(NotificationModel v) => v.scheduledTime;
  static const Field<NotificationModel, DateTime> _f$scheduledTime =
      Field('scheduledTime', _$scheduledTime, key: 'scheduled_time', opt: true);
  static DateTime? _$sentTime(NotificationModel v) => v.sentTime;
  static const Field<NotificationModel, DateTime> _f$sentTime =
      Field('sentTime', _$sentTime, key: 'sent_time', opt: true);
  static AppDestinationModel? _$destination(NotificationModel v) =>
      v.destination;
  static const Field<NotificationModel, AppDestinationModel> _f$destination =
      Field('destination', _$destination, opt: true);
  static bool _$isLocalNotification(NotificationModel v) =>
      v.isLocalNotification;
  static const Field<NotificationModel, bool> _f$isLocalNotification = Field(
      'isLocalNotification', _$isLocalNotification,
      key: 'is_local_notification', opt: true, def: false);
  static bool _$isRead(NotificationModel v) => v.isRead;
  static const Field<NotificationModel, bool> _f$isRead =
      Field('isRead', _$isRead, key: 'is_read', opt: true, def: false);

  @override
  final MappableFields<NotificationModel> fields = const {
    #id: _f$id,
    #localId: _f$localId,
    #type: _f$type,
    #title: _f$title,
    #body: _f$body,
    #imageUrl: _f$imageUrl,
    #topic: _f$topic,
    #scheduledTime: _f$scheduledTime,
    #sentTime: _f$sentTime,
    #destination: _f$destination,
    #isLocalNotification: _f$isLocalNotification,
    #isRead: _f$isRead,
  };

  static NotificationModel _instantiate(DecodingData data) {
    return NotificationModel(
        id: data.dec(_f$id),
        localId: data.dec(_f$localId),
        type: data.dec(_f$type),
        title: data.dec(_f$title),
        body: data.dec(_f$body),
        imageUrl: data.dec(_f$imageUrl),
        topic: data.dec(_f$topic),
        scheduledTime: data.dec(_f$scheduledTime),
        sentTime: data.dec(_f$sentTime),
        destination: data.dec(_f$destination),
        isLocalNotification: data.dec(_f$isLocalNotification),
        isRead: data.dec(_f$isRead));
  }

  @override
  final Function instantiate = _instantiate;

  static NotificationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NotificationModel>(map);
  }

  static NotificationModel fromJson(String json) {
    return ensureInitialized().decodeJson<NotificationModel>(json);
  }
}

mixin NotificationModelMappable {
  String toJson() {
    return NotificationModelMapper.ensureInitialized()
        .encodeJson<NotificationModel>(this as NotificationModel);
  }

  Map<String, dynamic> toMap() {
    return NotificationModelMapper.ensureInitialized()
        .encodeMap<NotificationModel>(this as NotificationModel);
  }

  NotificationModelCopyWith<NotificationModel, NotificationModel,
          NotificationModel>
      get copyWith => _NotificationModelCopyWithImpl(
          this as NotificationModel, $identity, $identity);
  @override
  String toString() {
    return NotificationModelMapper.ensureInitialized()
        .stringifyValue(this as NotificationModel);
  }

  @override
  bool operator ==(Object other) {
    return NotificationModelMapper.ensureInitialized()
        .equalsValue(this as NotificationModel, other);
  }

  @override
  int get hashCode {
    return NotificationModelMapper.ensureInitialized()
        .hashValue(this as NotificationModel);
  }
}

extension NotificationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotificationModel, $Out> {
  NotificationModelCopyWith<$R, NotificationModel, $Out>
      get $asNotificationModel =>
          $base.as((v, t, t2) => _NotificationModelCopyWithImpl(v, t, t2));
}

abstract class NotificationModelCopyWith<$R, $In extends NotificationModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  AppDestinationModelCopyWith<$R, AppDestinationModel, AppDestinationModel>?
      get destination;
  $R call(
      {String? id,
      int? localId,
      String? type,
      String? title,
      String? body,
      String? imageUrl,
      String? topic,
      DateTime? scheduledTime,
      DateTime? sentTime,
      AppDestinationModel? destination,
      bool? isLocalNotification,
      bool? isRead});
  NotificationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotificationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotificationModel, $Out>
    implements NotificationModelCopyWith<$R, NotificationModel, $Out> {
  _NotificationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotificationModel> $mapper =
      NotificationModelMapper.ensureInitialized();
  @override
  AppDestinationModelCopyWith<$R, AppDestinationModel, AppDestinationModel>?
      get destination =>
          $value.destination?.copyWith.$chain((v) => call(destination: v));
  @override
  $R call(
          {String? id,
          int? localId,
          Object? type = $none,
          Object? title = $none,
          Object? body = $none,
          Object? imageUrl = $none,
          Object? topic = $none,
          Object? scheduledTime = $none,
          Object? sentTime = $none,
          Object? destination = $none,
          bool? isLocalNotification,
          bool? isRead}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (localId != null) #localId: localId,
        if (type != $none) #type: type,
        if (title != $none) #title: title,
        if (body != $none) #body: body,
        if (imageUrl != $none) #imageUrl: imageUrl,
        if (topic != $none) #topic: topic,
        if (scheduledTime != $none) #scheduledTime: scheduledTime,
        if (sentTime != $none) #sentTime: sentTime,
        if (destination != $none) #destination: destination,
        if (isLocalNotification != null)
          #isLocalNotification: isLocalNotification,
        if (isRead != null) #isRead: isRead
      }));
  @override
  NotificationModel $make(CopyWithData data) => NotificationModel(
      id: data.get(#id, or: $value.id),
      localId: data.get(#localId, or: $value.localId),
      type: data.get(#type, or: $value.type),
      title: data.get(#title, or: $value.title),
      body: data.get(#body, or: $value.body),
      imageUrl: data.get(#imageUrl, or: $value.imageUrl),
      topic: data.get(#topic, or: $value.topic),
      scheduledTime: data.get(#scheduledTime, or: $value.scheduledTime),
      sentTime: data.get(#sentTime, or: $value.sentTime),
      destination: data.get(#destination, or: $value.destination),
      isLocalNotification:
          data.get(#isLocalNotification, or: $value.isLocalNotification),
      isRead: data.get(#isRead, or: $value.isRead));

  @override
  NotificationModelCopyWith<$R2, NotificationModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotificationModelCopyWithImpl($value, $cast, t);
}
