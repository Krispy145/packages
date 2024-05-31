// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_stream_model.dart';

class VideoStreamModelMapper extends ClassMapperBase<VideoStreamModel> {
  VideoStreamModelMapper._();

  static VideoStreamModelMapper? _instance;
  static VideoStreamModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoStreamModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VideoStreamModel';

  static int? _$widthPixels(VideoStreamModel v) => v.widthPixels;
  static const Field<VideoStreamModel, int> _f$widthPixels =
      Field('widthPixels', _$widthPixels, opt: true);
  static int? _$heightPixels(VideoStreamModel v) => v.heightPixels;
  static const Field<VideoStreamModel, int> _f$heightPixels =
      Field('heightPixels', _$heightPixels, opt: true);
  static double? _$frameRateFps(VideoStreamModel v) => v.frameRateFps;
  static const Field<VideoStreamModel, double> _f$frameRateFps =
      Field('frameRateFps', _$frameRateFps, opt: true);
  static double? _$aspectRatio(VideoStreamModel v) => v.aspectRatio;
  static const Field<VideoStreamModel, double> _f$aspectRatio =
      Field('aspectRatio', _$aspectRatio, opt: true);
  static String? _$codec(VideoStreamModel v) => v.codec;
  static const Field<VideoStreamModel, String> _f$codec =
      Field('codec', _$codec, opt: true);
  static int? _$bitrateBps(VideoStreamModel v) => v.bitrateBps;
  static const Field<VideoStreamModel, int> _f$bitrateBps =
      Field('bitrateBps', _$bitrateBps, opt: true);
  static String? _$rotation(VideoStreamModel v) => v.rotation;
  static const Field<VideoStreamModel, String> _f$rotation =
      Field('rotation', _$rotation, opt: true);
  static String? _$vendor(VideoStreamModel v) => v.vendor;
  static const Field<VideoStreamModel, String> _f$vendor =
      Field('vendor', _$vendor, opt: true);

  @override
  final MappableFields<VideoStreamModel> fields = const {
    #widthPixels: _f$widthPixels,
    #heightPixels: _f$heightPixels,
    #frameRateFps: _f$frameRateFps,
    #aspectRatio: _f$aspectRatio,
    #codec: _f$codec,
    #bitrateBps: _f$bitrateBps,
    #rotation: _f$rotation,
    #vendor: _f$vendor,
  };

  static VideoStreamModel _instantiate(DecodingData data) {
    return VideoStreamModel(
        widthPixels: data.dec(_f$widthPixels),
        heightPixels: data.dec(_f$heightPixels),
        frameRateFps: data.dec(_f$frameRateFps),
        aspectRatio: data.dec(_f$aspectRatio),
        codec: data.dec(_f$codec),
        bitrateBps: data.dec(_f$bitrateBps),
        rotation: data.dec(_f$rotation),
        vendor: data.dec(_f$vendor));
  }

  @override
  final Function instantiate = _instantiate;

  static VideoStreamModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoStreamModel>(map);
  }

  static VideoStreamModel fromJson(String json) {
    return ensureInitialized().decodeJson<VideoStreamModel>(json);
  }
}

mixin VideoStreamModelMappable {
  String toJson() {
    return VideoStreamModelMapper.ensureInitialized()
        .encodeJson<VideoStreamModel>(this as VideoStreamModel);
  }

  Map<String, dynamic> toMap() {
    return VideoStreamModelMapper.ensureInitialized()
        .encodeMap<VideoStreamModel>(this as VideoStreamModel);
  }

  VideoStreamModelCopyWith<VideoStreamModel, VideoStreamModel, VideoStreamModel>
      get copyWith => _VideoStreamModelCopyWithImpl(
          this as VideoStreamModel, $identity, $identity);
  @override
  String toString() {
    return VideoStreamModelMapper.ensureInitialized()
        .stringifyValue(this as VideoStreamModel);
  }

  @override
  bool operator ==(Object other) {
    return VideoStreamModelMapper.ensureInitialized()
        .equalsValue(this as VideoStreamModel, other);
  }

  @override
  int get hashCode {
    return VideoStreamModelMapper.ensureInitialized()
        .hashValue(this as VideoStreamModel);
  }
}

extension VideoStreamModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoStreamModel, $Out> {
  VideoStreamModelCopyWith<$R, VideoStreamModel, $Out>
      get $asVideoStreamModel =>
          $base.as((v, t, t2) => _VideoStreamModelCopyWithImpl(v, t, t2));
}

abstract class VideoStreamModelCopyWith<$R, $In extends VideoStreamModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? widthPixels,
      int? heightPixels,
      double? frameRateFps,
      double? aspectRatio,
      String? codec,
      int? bitrateBps,
      String? rotation,
      String? vendor});
  VideoStreamModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VideoStreamModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoStreamModel, $Out>
    implements VideoStreamModelCopyWith<$R, VideoStreamModel, $Out> {
  _VideoStreamModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoStreamModel> $mapper =
      VideoStreamModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? widthPixels = $none,
          Object? heightPixels = $none,
          Object? frameRateFps = $none,
          Object? aspectRatio = $none,
          Object? codec = $none,
          Object? bitrateBps = $none,
          Object? rotation = $none,
          Object? vendor = $none}) =>
      $apply(FieldCopyWithData({
        if (widthPixels != $none) #widthPixels: widthPixels,
        if (heightPixels != $none) #heightPixels: heightPixels,
        if (frameRateFps != $none) #frameRateFps: frameRateFps,
        if (aspectRatio != $none) #aspectRatio: aspectRatio,
        if (codec != $none) #codec: codec,
        if (bitrateBps != $none) #bitrateBps: bitrateBps,
        if (rotation != $none) #rotation: rotation,
        if (vendor != $none) #vendor: vendor
      }));
  @override
  VideoStreamModel $make(CopyWithData data) => VideoStreamModel(
      widthPixels: data.get(#widthPixels, or: $value.widthPixels),
      heightPixels: data.get(#heightPixels, or: $value.heightPixels),
      frameRateFps: data.get(#frameRateFps, or: $value.frameRateFps),
      aspectRatio: data.get(#aspectRatio, or: $value.aspectRatio),
      codec: data.get(#codec, or: $value.codec),
      bitrateBps: data.get(#bitrateBps, or: $value.bitrateBps),
      rotation: data.get(#rotation, or: $value.rotation),
      vendor: data.get(#vendor, or: $value.vendor));

  @override
  VideoStreamModelCopyWith<$R2, VideoStreamModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VideoStreamModelCopyWithImpl($value, $cast, t);
}
