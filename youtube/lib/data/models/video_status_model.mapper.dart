// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_status_model.dart';

class VideoStatusModelMapper extends ClassMapperBase<VideoStatusModel> {
  VideoStatusModelMapper._();

  static VideoStatusModelMapper? _instance;
  static VideoStatusModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoStatusModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VideoStatusModel';

  static String? _$uploadStatus(VideoStatusModel v) => v.uploadStatus;
  static const Field<VideoStatusModel, String> _f$uploadStatus =
      Field('uploadStatus', _$uploadStatus, opt: true);
  static String? _$failureReason(VideoStatusModel v) => v.failureReason;
  static const Field<VideoStatusModel, String> _f$failureReason =
      Field('failureReason', _$failureReason, opt: true);
  static String? _$rejectionReason(VideoStatusModel v) => v.rejectionReason;
  static const Field<VideoStatusModel, String> _f$rejectionReason =
      Field('rejectionReason', _$rejectionReason, opt: true);
  static String? _$privacyStatus(VideoStatusModel v) => v.privacyStatus;
  static const Field<VideoStatusModel, String> _f$privacyStatus =
      Field('privacyStatus', _$privacyStatus, opt: true);
  static DateTime? _$publishAt(VideoStatusModel v) => v.publishAt;
  static const Field<VideoStatusModel, DateTime> _f$publishAt =
      Field('publishAt', _$publishAt, opt: true);
  static String? _$license(VideoStatusModel v) => v.license;
  static const Field<VideoStatusModel, String> _f$license =
      Field('license', _$license, opt: true);
  static bool? _$embeddable(VideoStatusModel v) => v.embeddable;
  static const Field<VideoStatusModel, bool> _f$embeddable =
      Field('embeddable', _$embeddable, opt: true);
  static bool? _$publicStatsViewable(VideoStatusModel v) =>
      v.publicStatsViewable;
  static const Field<VideoStatusModel, bool> _f$publicStatsViewable =
      Field('publicStatsViewable', _$publicStatsViewable, opt: true);
  static bool? _$madeForKids(VideoStatusModel v) => v.madeForKids;
  static const Field<VideoStatusModel, bool> _f$madeForKids =
      Field('madeForKids', _$madeForKids, opt: true);
  static bool? _$selfDeclaredMadeForKids(VideoStatusModel v) =>
      v.selfDeclaredMadeForKids;
  static const Field<VideoStatusModel, bool> _f$selfDeclaredMadeForKids =
      Field('selfDeclaredMadeForKids', _$selfDeclaredMadeForKids, opt: true);

  @override
  final MappableFields<VideoStatusModel> fields = const {
    #uploadStatus: _f$uploadStatus,
    #failureReason: _f$failureReason,
    #rejectionReason: _f$rejectionReason,
    #privacyStatus: _f$privacyStatus,
    #publishAt: _f$publishAt,
    #license: _f$license,
    #embeddable: _f$embeddable,
    #publicStatsViewable: _f$publicStatsViewable,
    #madeForKids: _f$madeForKids,
    #selfDeclaredMadeForKids: _f$selfDeclaredMadeForKids,
  };

  static VideoStatusModel _instantiate(DecodingData data) {
    return VideoStatusModel(
        uploadStatus: data.dec(_f$uploadStatus),
        failureReason: data.dec(_f$failureReason),
        rejectionReason: data.dec(_f$rejectionReason),
        privacyStatus: data.dec(_f$privacyStatus),
        publishAt: data.dec(_f$publishAt),
        license: data.dec(_f$license),
        embeddable: data.dec(_f$embeddable),
        publicStatsViewable: data.dec(_f$publicStatsViewable),
        madeForKids: data.dec(_f$madeForKids),
        selfDeclaredMadeForKids: data.dec(_f$selfDeclaredMadeForKids));
  }

  @override
  final Function instantiate = _instantiate;

  static VideoStatusModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoStatusModel>(map);
  }

  static VideoStatusModel fromJson(String json) {
    return ensureInitialized().decodeJson<VideoStatusModel>(json);
  }
}

mixin VideoStatusModelMappable {
  String toJson() {
    return VideoStatusModelMapper.ensureInitialized()
        .encodeJson<VideoStatusModel>(this as VideoStatusModel);
  }

  Map<String, dynamic> toMap() {
    return VideoStatusModelMapper.ensureInitialized()
        .encodeMap<VideoStatusModel>(this as VideoStatusModel);
  }

  VideoStatusModelCopyWith<VideoStatusModel, VideoStatusModel, VideoStatusModel>
      get copyWith => _VideoStatusModelCopyWithImpl(
          this as VideoStatusModel, $identity, $identity);
  @override
  String toString() {
    return VideoStatusModelMapper.ensureInitialized()
        .stringifyValue(this as VideoStatusModel);
  }

  @override
  bool operator ==(Object other) {
    return VideoStatusModelMapper.ensureInitialized()
        .equalsValue(this as VideoStatusModel, other);
  }

  @override
  int get hashCode {
    return VideoStatusModelMapper.ensureInitialized()
        .hashValue(this as VideoStatusModel);
  }
}

extension VideoStatusModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoStatusModel, $Out> {
  VideoStatusModelCopyWith<$R, VideoStatusModel, $Out>
      get $asVideoStatusModel =>
          $base.as((v, t, t2) => _VideoStatusModelCopyWithImpl(v, t, t2));
}

abstract class VideoStatusModelCopyWith<$R, $In extends VideoStatusModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? uploadStatus,
      String? failureReason,
      String? rejectionReason,
      String? privacyStatus,
      DateTime? publishAt,
      String? license,
      bool? embeddable,
      bool? publicStatsViewable,
      bool? madeForKids,
      bool? selfDeclaredMadeForKids});
  VideoStatusModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VideoStatusModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoStatusModel, $Out>
    implements VideoStatusModelCopyWith<$R, VideoStatusModel, $Out> {
  _VideoStatusModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoStatusModel> $mapper =
      VideoStatusModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? uploadStatus = $none,
          Object? failureReason = $none,
          Object? rejectionReason = $none,
          Object? privacyStatus = $none,
          Object? publishAt = $none,
          Object? license = $none,
          Object? embeddable = $none,
          Object? publicStatsViewable = $none,
          Object? madeForKids = $none,
          Object? selfDeclaredMadeForKids = $none}) =>
      $apply(FieldCopyWithData({
        if (uploadStatus != $none) #uploadStatus: uploadStatus,
        if (failureReason != $none) #failureReason: failureReason,
        if (rejectionReason != $none) #rejectionReason: rejectionReason,
        if (privacyStatus != $none) #privacyStatus: privacyStatus,
        if (publishAt != $none) #publishAt: publishAt,
        if (license != $none) #license: license,
        if (embeddable != $none) #embeddable: embeddable,
        if (publicStatsViewable != $none)
          #publicStatsViewable: publicStatsViewable,
        if (madeForKids != $none) #madeForKids: madeForKids,
        if (selfDeclaredMadeForKids != $none)
          #selfDeclaredMadeForKids: selfDeclaredMadeForKids
      }));
  @override
  VideoStatusModel $make(CopyWithData data) => VideoStatusModel(
      uploadStatus: data.get(#uploadStatus, or: $value.uploadStatus),
      failureReason: data.get(#failureReason, or: $value.failureReason),
      rejectionReason: data.get(#rejectionReason, or: $value.rejectionReason),
      privacyStatus: data.get(#privacyStatus, or: $value.privacyStatus),
      publishAt: data.get(#publishAt, or: $value.publishAt),
      license: data.get(#license, or: $value.license),
      embeddable: data.get(#embeddable, or: $value.embeddable),
      publicStatsViewable:
          data.get(#publicStatsViewable, or: $value.publicStatsViewable),
      madeForKids: data.get(#madeForKids, or: $value.madeForKids),
      selfDeclaredMadeForKids: data.get(#selfDeclaredMadeForKids,
          or: $value.selfDeclaredMadeForKids));

  @override
  VideoStatusModelCopyWith<$R2, VideoStatusModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VideoStatusModelCopyWithImpl($value, $cast, t);
}
