// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'audio_stream_model.dart';

class AudioStreamModelMapper extends ClassMapperBase<AudioStreamModel> {
  AudioStreamModelMapper._();

  static AudioStreamModelMapper? _instance;
  static AudioStreamModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioStreamModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AudioStreamModel';

  static int? _$channelCount(AudioStreamModel v) => v.channelCount;
  static const Field<AudioStreamModel, int> _f$channelCount =
      Field('channelCount', _$channelCount, opt: true);
  static String? _$codec(AudioStreamModel v) => v.codec;
  static const Field<AudioStreamModel, String> _f$codec =
      Field('codec', _$codec, opt: true);
  static int? _$bitrateBps(AudioStreamModel v) => v.bitrateBps;
  static const Field<AudioStreamModel, int> _f$bitrateBps =
      Field('bitrateBps', _$bitrateBps, opt: true);
  static String? _$vendor(AudioStreamModel v) => v.vendor;
  static const Field<AudioStreamModel, String> _f$vendor =
      Field('vendor', _$vendor, opt: true);

  @override
  final MappableFields<AudioStreamModel> fields = const {
    #channelCount: _f$channelCount,
    #codec: _f$codec,
    #bitrateBps: _f$bitrateBps,
    #vendor: _f$vendor,
  };

  static AudioStreamModel _instantiate(DecodingData data) {
    return AudioStreamModel(
        channelCount: data.dec(_f$channelCount),
        codec: data.dec(_f$codec),
        bitrateBps: data.dec(_f$bitrateBps),
        vendor: data.dec(_f$vendor));
  }

  @override
  final Function instantiate = _instantiate;

  static AudioStreamModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AudioStreamModel>(map);
  }

  static AudioStreamModel fromJson(String json) {
    return ensureInitialized().decodeJson<AudioStreamModel>(json);
  }
}

mixin AudioStreamModelMappable {
  String toJson() {
    return AudioStreamModelMapper.ensureInitialized()
        .encodeJson<AudioStreamModel>(this as AudioStreamModel);
  }

  Map<String, dynamic> toMap() {
    return AudioStreamModelMapper.ensureInitialized()
        .encodeMap<AudioStreamModel>(this as AudioStreamModel);
  }

  AudioStreamModelCopyWith<AudioStreamModel, AudioStreamModel, AudioStreamModel>
      get copyWith => _AudioStreamModelCopyWithImpl(
          this as AudioStreamModel, $identity, $identity);
  @override
  String toString() {
    return AudioStreamModelMapper.ensureInitialized()
        .stringifyValue(this as AudioStreamModel);
  }

  @override
  bool operator ==(Object other) {
    return AudioStreamModelMapper.ensureInitialized()
        .equalsValue(this as AudioStreamModel, other);
  }

  @override
  int get hashCode {
    return AudioStreamModelMapper.ensureInitialized()
        .hashValue(this as AudioStreamModel);
  }
}

extension AudioStreamModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AudioStreamModel, $Out> {
  AudioStreamModelCopyWith<$R, AudioStreamModel, $Out>
      get $asAudioStreamModel =>
          $base.as((v, t, t2) => _AudioStreamModelCopyWithImpl(v, t, t2));
}

abstract class AudioStreamModelCopyWith<$R, $In extends AudioStreamModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? channelCount, String? codec, int? bitrateBps, String? vendor});
  AudioStreamModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AudioStreamModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AudioStreamModel, $Out>
    implements AudioStreamModelCopyWith<$R, AudioStreamModel, $Out> {
  _AudioStreamModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AudioStreamModel> $mapper =
      AudioStreamModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? channelCount = $none,
          Object? codec = $none,
          Object? bitrateBps = $none,
          Object? vendor = $none}) =>
      $apply(FieldCopyWithData({
        if (channelCount != $none) #channelCount: channelCount,
        if (codec != $none) #codec: codec,
        if (bitrateBps != $none) #bitrateBps: bitrateBps,
        if (vendor != $none) #vendor: vendor
      }));
  @override
  AudioStreamModel $make(CopyWithData data) => AudioStreamModel(
      channelCount: data.get(#channelCount, or: $value.channelCount),
      codec: data.get(#codec, or: $value.codec),
      bitrateBps: data.get(#bitrateBps, or: $value.bitrateBps),
      vendor: data.get(#vendor, or: $value.vendor));

  @override
  AudioStreamModelCopyWith<$R2, AudioStreamModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AudioStreamModelCopyWithImpl($value, $cast, t);
}
