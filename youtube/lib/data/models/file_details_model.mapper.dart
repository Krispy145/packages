// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'file_details_model.dart';

class FileDetailsModelMapper extends ClassMapperBase<FileDetailsModel> {
  FileDetailsModelMapper._();

  static FileDetailsModelMapper? _instance;
  static FileDetailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FileDetailsModelMapper._());
      VideoStreamModelMapper.ensureInitialized();
      AudioStreamModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FileDetailsModel';

  static String? _$fileName(FileDetailsModel v) => v.fileName;
  static const Field<FileDetailsModel, String> _f$fileName =
      Field('fileName', _$fileName, key: 'file_name', opt: true);
  static int? _$fileSize(FileDetailsModel v) => v.fileSize;
  static const Field<FileDetailsModel, int> _f$fileSize =
      Field('fileSize', _$fileSize, key: 'file_size', opt: true);
  static String? _$fileType(FileDetailsModel v) => v.fileType;
  static const Field<FileDetailsModel, String> _f$fileType =
      Field('fileType', _$fileType, key: 'file_type', opt: true);
  static String? _$container(FileDetailsModel v) => v.container;
  static const Field<FileDetailsModel, String> _f$container =
      Field('container', _$container, opt: true);
  static List<VideoStreamModel>? _$videoStreams(FileDetailsModel v) =>
      v.videoStreams;
  static const Field<FileDetailsModel, List<VideoStreamModel>> _f$videoStreams =
      Field('videoStreams', _$videoStreams, key: 'video_streams', opt: true);
  static List<AudioStreamModel>? _$audioStreams(FileDetailsModel v) =>
      v.audioStreams;
  static const Field<FileDetailsModel, List<AudioStreamModel>> _f$audioStreams =
      Field('audioStreams', _$audioStreams, key: 'audio_streams', opt: true);
  static int? _$durationMs(FileDetailsModel v) => v.durationMs;
  static const Field<FileDetailsModel, int> _f$durationMs =
      Field('durationMs', _$durationMs, key: 'duration_ms', opt: true);
  static int? _$bitrateBps(FileDetailsModel v) => v.bitrateBps;
  static const Field<FileDetailsModel, int> _f$bitrateBps =
      Field('bitrateBps', _$bitrateBps, key: 'bitrate_bps', opt: true);
  static String? _$creationTime(FileDetailsModel v) => v.creationTime;
  static const Field<FileDetailsModel, String> _f$creationTime =
      Field('creationTime', _$creationTime, key: 'creation_time', opt: true);

  @override
  final MappableFields<FileDetailsModel> fields = const {
    #fileName: _f$fileName,
    #fileSize: _f$fileSize,
    #fileType: _f$fileType,
    #container: _f$container,
    #videoStreams: _f$videoStreams,
    #audioStreams: _f$audioStreams,
    #durationMs: _f$durationMs,
    #bitrateBps: _f$bitrateBps,
    #creationTime: _f$creationTime,
  };

  static FileDetailsModel _instantiate(DecodingData data) {
    return FileDetailsModel(
        fileName: data.dec(_f$fileName),
        fileSize: data.dec(_f$fileSize),
        fileType: data.dec(_f$fileType),
        container: data.dec(_f$container),
        videoStreams: data.dec(_f$videoStreams),
        audioStreams: data.dec(_f$audioStreams),
        durationMs: data.dec(_f$durationMs),
        bitrateBps: data.dec(_f$bitrateBps),
        creationTime: data.dec(_f$creationTime));
  }

  @override
  final Function instantiate = _instantiate;

  static FileDetailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FileDetailsModel>(map);
  }

  static FileDetailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<FileDetailsModel>(json);
  }
}

mixin FileDetailsModelMappable {
  String toJson() {
    return FileDetailsModelMapper.ensureInitialized()
        .encodeJson<FileDetailsModel>(this as FileDetailsModel);
  }

  Map<String, dynamic> toMap() {
    return FileDetailsModelMapper.ensureInitialized()
        .encodeMap<FileDetailsModel>(this as FileDetailsModel);
  }

  FileDetailsModelCopyWith<FileDetailsModel, FileDetailsModel, FileDetailsModel>
      get copyWith => _FileDetailsModelCopyWithImpl(
          this as FileDetailsModel, $identity, $identity);
  @override
  String toString() {
    return FileDetailsModelMapper.ensureInitialized()
        .stringifyValue(this as FileDetailsModel);
  }

  @override
  bool operator ==(Object other) {
    return FileDetailsModelMapper.ensureInitialized()
        .equalsValue(this as FileDetailsModel, other);
  }

  @override
  int get hashCode {
    return FileDetailsModelMapper.ensureInitialized()
        .hashValue(this as FileDetailsModel);
  }
}

extension FileDetailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FileDetailsModel, $Out> {
  FileDetailsModelCopyWith<$R, FileDetailsModel, $Out>
      get $asFileDetailsModel =>
          $base.as((v, t, t2) => _FileDetailsModelCopyWithImpl(v, t, t2));
}

abstract class FileDetailsModelCopyWith<$R, $In extends FileDetailsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, VideoStreamModel,
          VideoStreamModelCopyWith<$R, VideoStreamModel, VideoStreamModel>>?
      get videoStreams;
  ListCopyWith<$R, AudioStreamModel,
          AudioStreamModelCopyWith<$R, AudioStreamModel, AudioStreamModel>>?
      get audioStreams;
  $R call(
      {String? fileName,
      int? fileSize,
      String? fileType,
      String? container,
      List<VideoStreamModel>? videoStreams,
      List<AudioStreamModel>? audioStreams,
      int? durationMs,
      int? bitrateBps,
      String? creationTime});
  FileDetailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FileDetailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FileDetailsModel, $Out>
    implements FileDetailsModelCopyWith<$R, FileDetailsModel, $Out> {
  _FileDetailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FileDetailsModel> $mapper =
      FileDetailsModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, VideoStreamModel,
          VideoStreamModelCopyWith<$R, VideoStreamModel, VideoStreamModel>>?
      get videoStreams => $value.videoStreams != null
          ? ListCopyWith($value.videoStreams!, (v, t) => v.copyWith.$chain(t),
              (v) => call(videoStreams: v))
          : null;
  @override
  ListCopyWith<$R, AudioStreamModel,
          AudioStreamModelCopyWith<$R, AudioStreamModel, AudioStreamModel>>?
      get audioStreams => $value.audioStreams != null
          ? ListCopyWith($value.audioStreams!, (v, t) => v.copyWith.$chain(t),
              (v) => call(audioStreams: v))
          : null;
  @override
  $R call(
          {Object? fileName = $none,
          Object? fileSize = $none,
          Object? fileType = $none,
          Object? container = $none,
          Object? videoStreams = $none,
          Object? audioStreams = $none,
          Object? durationMs = $none,
          Object? bitrateBps = $none,
          Object? creationTime = $none}) =>
      $apply(FieldCopyWithData({
        if (fileName != $none) #fileName: fileName,
        if (fileSize != $none) #fileSize: fileSize,
        if (fileType != $none) #fileType: fileType,
        if (container != $none) #container: container,
        if (videoStreams != $none) #videoStreams: videoStreams,
        if (audioStreams != $none) #audioStreams: audioStreams,
        if (durationMs != $none) #durationMs: durationMs,
        if (bitrateBps != $none) #bitrateBps: bitrateBps,
        if (creationTime != $none) #creationTime: creationTime
      }));
  @override
  FileDetailsModel $make(CopyWithData data) => FileDetailsModel(
      fileName: data.get(#fileName, or: $value.fileName),
      fileSize: data.get(#fileSize, or: $value.fileSize),
      fileType: data.get(#fileType, or: $value.fileType),
      container: data.get(#container, or: $value.container),
      videoStreams: data.get(#videoStreams, or: $value.videoStreams),
      audioStreams: data.get(#audioStreams, or: $value.audioStreams),
      durationMs: data.get(#durationMs, or: $value.durationMs),
      bitrateBps: data.get(#bitrateBps, or: $value.bitrateBps),
      creationTime: data.get(#creationTime, or: $value.creationTime));

  @override
  FileDetailsModelCopyWith<$R2, FileDetailsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FileDetailsModelCopyWithImpl($value, $cast, t);
}
