// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'live_streaming_details_model.dart';

class LiveStreamingDetailsModelMapper
    extends ClassMapperBase<LiveStreamingDetailsModel> {
  LiveStreamingDetailsModelMapper._();

  static LiveStreamingDetailsModelMapper? _instance;
  static LiveStreamingDetailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = LiveStreamingDetailsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LiveStreamingDetailsModel';

  static DateTime? _$actualStartTime(LiveStreamingDetailsModel v) =>
      v.actualStartTime;
  static const Field<LiveStreamingDetailsModel, DateTime> _f$actualStartTime =
      Field('actualStartTime', _$actualStartTime, opt: true);
  static DateTime? _$actualEndTime(LiveStreamingDetailsModel v) =>
      v.actualEndTime;
  static const Field<LiveStreamingDetailsModel, DateTime> _f$actualEndTime =
      Field('actualEndTime', _$actualEndTime, opt: true);
  static DateTime? _$scheduledStartTime(LiveStreamingDetailsModel v) =>
      v.scheduledStartTime;
  static const Field<LiveStreamingDetailsModel, DateTime>
      _f$scheduledStartTime =
      Field('scheduledStartTime', _$scheduledStartTime, opt: true);
  static DateTime? _$scheduledEndTime(LiveStreamingDetailsModel v) =>
      v.scheduledEndTime;
  static const Field<LiveStreamingDetailsModel, DateTime> _f$scheduledEndTime =
      Field('scheduledEndTime', _$scheduledEndTime, opt: true);
  static int? _$concurrentViewers(LiveStreamingDetailsModel v) =>
      v.concurrentViewers;
  static const Field<LiveStreamingDetailsModel, int> _f$concurrentViewers =
      Field('concurrentViewers', _$concurrentViewers, opt: true);
  static String? _$activeLiveChatId(LiveStreamingDetailsModel v) =>
      v.activeLiveChatId;
  static const Field<LiveStreamingDetailsModel, String> _f$activeLiveChatId =
      Field('activeLiveChatId', _$activeLiveChatId, opt: true);

  @override
  final MappableFields<LiveStreamingDetailsModel> fields = const {
    #actualStartTime: _f$actualStartTime,
    #actualEndTime: _f$actualEndTime,
    #scheduledStartTime: _f$scheduledStartTime,
    #scheduledEndTime: _f$scheduledEndTime,
    #concurrentViewers: _f$concurrentViewers,
    #activeLiveChatId: _f$activeLiveChatId,
  };

  static LiveStreamingDetailsModel _instantiate(DecodingData data) {
    return LiveStreamingDetailsModel(
        actualStartTime: data.dec(_f$actualStartTime),
        actualEndTime: data.dec(_f$actualEndTime),
        scheduledStartTime: data.dec(_f$scheduledStartTime),
        scheduledEndTime: data.dec(_f$scheduledEndTime),
        concurrentViewers: data.dec(_f$concurrentViewers),
        activeLiveChatId: data.dec(_f$activeLiveChatId));
  }

  @override
  final Function instantiate = _instantiate;

  static LiveStreamingDetailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LiveStreamingDetailsModel>(map);
  }

  static LiveStreamingDetailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<LiveStreamingDetailsModel>(json);
  }
}

mixin LiveStreamingDetailsModelMappable {
  String toJson() {
    return LiveStreamingDetailsModelMapper.ensureInitialized()
        .encodeJson<LiveStreamingDetailsModel>(
            this as LiveStreamingDetailsModel);
  }

  Map<String, dynamic> toMap() {
    return LiveStreamingDetailsModelMapper.ensureInitialized()
        .encodeMap<LiveStreamingDetailsModel>(
            this as LiveStreamingDetailsModel);
  }

  LiveStreamingDetailsModelCopyWith<LiveStreamingDetailsModel,
          LiveStreamingDetailsModel, LiveStreamingDetailsModel>
      get copyWith => _LiveStreamingDetailsModelCopyWithImpl(
          this as LiveStreamingDetailsModel, $identity, $identity);
  @override
  String toString() {
    return LiveStreamingDetailsModelMapper.ensureInitialized()
        .stringifyValue(this as LiveStreamingDetailsModel);
  }

  @override
  bool operator ==(Object other) {
    return LiveStreamingDetailsModelMapper.ensureInitialized()
        .equalsValue(this as LiveStreamingDetailsModel, other);
  }

  @override
  int get hashCode {
    return LiveStreamingDetailsModelMapper.ensureInitialized()
        .hashValue(this as LiveStreamingDetailsModel);
  }
}

extension LiveStreamingDetailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LiveStreamingDetailsModel, $Out> {
  LiveStreamingDetailsModelCopyWith<$R, LiveStreamingDetailsModel, $Out>
      get $asLiveStreamingDetailsModel => $base
          .as((v, t, t2) => _LiveStreamingDetailsModelCopyWithImpl(v, t, t2));
}

abstract class LiveStreamingDetailsModelCopyWith<
    $R,
    $In extends LiveStreamingDetailsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {DateTime? actualStartTime,
      DateTime? actualEndTime,
      DateTime? scheduledStartTime,
      DateTime? scheduledEndTime,
      int? concurrentViewers,
      String? activeLiveChatId});
  LiveStreamingDetailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LiveStreamingDetailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LiveStreamingDetailsModel, $Out>
    implements
        LiveStreamingDetailsModelCopyWith<$R, LiveStreamingDetailsModel, $Out> {
  _LiveStreamingDetailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LiveStreamingDetailsModel> $mapper =
      LiveStreamingDetailsModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? actualStartTime = $none,
          Object? actualEndTime = $none,
          Object? scheduledStartTime = $none,
          Object? scheduledEndTime = $none,
          Object? concurrentViewers = $none,
          Object? activeLiveChatId = $none}) =>
      $apply(FieldCopyWithData({
        if (actualStartTime != $none) #actualStartTime: actualStartTime,
        if (actualEndTime != $none) #actualEndTime: actualEndTime,
        if (scheduledStartTime != $none)
          #scheduledStartTime: scheduledStartTime,
        if (scheduledEndTime != $none) #scheduledEndTime: scheduledEndTime,
        if (concurrentViewers != $none) #concurrentViewers: concurrentViewers,
        if (activeLiveChatId != $none) #activeLiveChatId: activeLiveChatId
      }));
  @override
  LiveStreamingDetailsModel $make(CopyWithData data) =>
      LiveStreamingDetailsModel(
          actualStartTime:
              data.get(#actualStartTime, or: $value.actualStartTime),
          actualEndTime: data.get(#actualEndTime, or: $value.actualEndTime),
          scheduledStartTime:
              data.get(#scheduledStartTime, or: $value.scheduledStartTime),
          scheduledEndTime:
              data.get(#scheduledEndTime, or: $value.scheduledEndTime),
          concurrentViewers:
              data.get(#concurrentViewers, or: $value.concurrentViewers),
          activeLiveChatId:
              data.get(#activeLiveChatId, or: $value.activeLiveChatId));

  @override
  LiveStreamingDetailsModelCopyWith<$R2, LiveStreamingDetailsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LiveStreamingDetailsModelCopyWithImpl($value, $cast, t);
}
