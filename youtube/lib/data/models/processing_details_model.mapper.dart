// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'processing_details_model.dart';

class ProcessingDetailsModelMapper
    extends ClassMapperBase<ProcessingDetailsModel> {
  ProcessingDetailsModelMapper._();

  static ProcessingDetailsModelMapper? _instance;
  static ProcessingDetailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProcessingDetailsModelMapper._());
      ProcessingProgressModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProcessingDetailsModel';

  static String? _$processingStatus(ProcessingDetailsModel v) =>
      v.processingStatus;
  static const Field<ProcessingDetailsModel, String> _f$processingStatus =
      Field('processingStatus', _$processingStatus,
          key: 'processing_status', opt: true);
  static ProcessingProgressModel? _$processingProgress(
          ProcessingDetailsModel v) =>
      v.processingProgress;
  static const Field<ProcessingDetailsModel, ProcessingProgressModel>
      _f$processingProgress = Field('processingProgress', _$processingProgress,
          key: 'processing_progress', opt: true);
  static String? _$processingFailureReason(ProcessingDetailsModel v) =>
      v.processingFailureReason;
  static const Field<ProcessingDetailsModel, String>
      _f$processingFailureReason = Field(
          'processingFailureReason', _$processingFailureReason,
          key: 'processing_failure_reason', opt: true);
  static String? _$fileDetailsAvailability(ProcessingDetailsModel v) =>
      v.fileDetailsAvailability;
  static const Field<ProcessingDetailsModel, String>
      _f$fileDetailsAvailability = Field(
          'fileDetailsAvailability', _$fileDetailsAvailability,
          key: 'file_details_availability', opt: true);
  static String? _$processingIssuesAvailability(ProcessingDetailsModel v) =>
      v.processingIssuesAvailability;
  static const Field<ProcessingDetailsModel, String>
      _f$processingIssuesAvailability = Field(
          'processingIssuesAvailability', _$processingIssuesAvailability,
          key: 'processing_issues_availability', opt: true);
  static String? _$tagSuggestionsAvailability(ProcessingDetailsModel v) =>
      v.tagSuggestionsAvailability;
  static const Field<ProcessingDetailsModel, String>
      _f$tagSuggestionsAvailability = Field(
          'tagSuggestionsAvailability', _$tagSuggestionsAvailability,
          key: 'tag_suggestions_availability', opt: true);
  static String? _$editorSuggestionsAvailability(ProcessingDetailsModel v) =>
      v.editorSuggestionsAvailability;
  static const Field<ProcessingDetailsModel, String>
      _f$editorSuggestionsAvailability = Field(
          'editorSuggestionsAvailability', _$editorSuggestionsAvailability,
          key: 'editor_suggestions_availability', opt: true);
  static String? _$thumbnailsAvailability(ProcessingDetailsModel v) =>
      v.thumbnailsAvailability;
  static const Field<ProcessingDetailsModel, String> _f$thumbnailsAvailability =
      Field('thumbnailsAvailability', _$thumbnailsAvailability,
          key: 'thumbnails_availability', opt: true);

  @override
  final MappableFields<ProcessingDetailsModel> fields = const {
    #processingStatus: _f$processingStatus,
    #processingProgress: _f$processingProgress,
    #processingFailureReason: _f$processingFailureReason,
    #fileDetailsAvailability: _f$fileDetailsAvailability,
    #processingIssuesAvailability: _f$processingIssuesAvailability,
    #tagSuggestionsAvailability: _f$tagSuggestionsAvailability,
    #editorSuggestionsAvailability: _f$editorSuggestionsAvailability,
    #thumbnailsAvailability: _f$thumbnailsAvailability,
  };

  static ProcessingDetailsModel _instantiate(DecodingData data) {
    return ProcessingDetailsModel(
        processingStatus: data.dec(_f$processingStatus),
        processingProgress: data.dec(_f$processingProgress),
        processingFailureReason: data.dec(_f$processingFailureReason),
        fileDetailsAvailability: data.dec(_f$fileDetailsAvailability),
        processingIssuesAvailability: data.dec(_f$processingIssuesAvailability),
        tagSuggestionsAvailability: data.dec(_f$tagSuggestionsAvailability),
        editorSuggestionsAvailability:
            data.dec(_f$editorSuggestionsAvailability),
        thumbnailsAvailability: data.dec(_f$thumbnailsAvailability));
  }

  @override
  final Function instantiate = _instantiate;

  static ProcessingDetailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProcessingDetailsModel>(map);
  }

  static ProcessingDetailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProcessingDetailsModel>(json);
  }
}

mixin ProcessingDetailsModelMappable {
  String toJson() {
    return ProcessingDetailsModelMapper.ensureInitialized()
        .encodeJson<ProcessingDetailsModel>(this as ProcessingDetailsModel);
  }

  Map<String, dynamic> toMap() {
    return ProcessingDetailsModelMapper.ensureInitialized()
        .encodeMap<ProcessingDetailsModel>(this as ProcessingDetailsModel);
  }

  ProcessingDetailsModelCopyWith<ProcessingDetailsModel, ProcessingDetailsModel,
          ProcessingDetailsModel>
      get copyWith => _ProcessingDetailsModelCopyWithImpl(
          this as ProcessingDetailsModel, $identity, $identity);
  @override
  String toString() {
    return ProcessingDetailsModelMapper.ensureInitialized()
        .stringifyValue(this as ProcessingDetailsModel);
  }

  @override
  bool operator ==(Object other) {
    return ProcessingDetailsModelMapper.ensureInitialized()
        .equalsValue(this as ProcessingDetailsModel, other);
  }

  @override
  int get hashCode {
    return ProcessingDetailsModelMapper.ensureInitialized()
        .hashValue(this as ProcessingDetailsModel);
  }
}

extension ProcessingDetailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProcessingDetailsModel, $Out> {
  ProcessingDetailsModelCopyWith<$R, ProcessingDetailsModel, $Out>
      get $asProcessingDetailsModel =>
          $base.as((v, t, t2) => _ProcessingDetailsModelCopyWithImpl(v, t, t2));
}

abstract class ProcessingDetailsModelCopyWith<
    $R,
    $In extends ProcessingDetailsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ProcessingProgressModelCopyWith<$R, ProcessingProgressModel,
      ProcessingProgressModel>? get processingProgress;
  $R call(
      {String? processingStatus,
      ProcessingProgressModel? processingProgress,
      String? processingFailureReason,
      String? fileDetailsAvailability,
      String? processingIssuesAvailability,
      String? tagSuggestionsAvailability,
      String? editorSuggestionsAvailability,
      String? thumbnailsAvailability});
  ProcessingDetailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ProcessingDetailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProcessingDetailsModel, $Out>
    implements
        ProcessingDetailsModelCopyWith<$R, ProcessingDetailsModel, $Out> {
  _ProcessingDetailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProcessingDetailsModel> $mapper =
      ProcessingDetailsModelMapper.ensureInitialized();
  @override
  ProcessingProgressModelCopyWith<$R, ProcessingProgressModel,
          ProcessingProgressModel>?
      get processingProgress => $value.processingProgress?.copyWith
          .$chain((v) => call(processingProgress: v));
  @override
  $R call(
          {Object? processingStatus = $none,
          Object? processingProgress = $none,
          Object? processingFailureReason = $none,
          Object? fileDetailsAvailability = $none,
          Object? processingIssuesAvailability = $none,
          Object? tagSuggestionsAvailability = $none,
          Object? editorSuggestionsAvailability = $none,
          Object? thumbnailsAvailability = $none}) =>
      $apply(FieldCopyWithData({
        if (processingStatus != $none) #processingStatus: processingStatus,
        if (processingProgress != $none)
          #processingProgress: processingProgress,
        if (processingFailureReason != $none)
          #processingFailureReason: processingFailureReason,
        if (fileDetailsAvailability != $none)
          #fileDetailsAvailability: fileDetailsAvailability,
        if (processingIssuesAvailability != $none)
          #processingIssuesAvailability: processingIssuesAvailability,
        if (tagSuggestionsAvailability != $none)
          #tagSuggestionsAvailability: tagSuggestionsAvailability,
        if (editorSuggestionsAvailability != $none)
          #editorSuggestionsAvailability: editorSuggestionsAvailability,
        if (thumbnailsAvailability != $none)
          #thumbnailsAvailability: thumbnailsAvailability
      }));
  @override
  ProcessingDetailsModel $make(CopyWithData data) => ProcessingDetailsModel(
      processingStatus:
          data.get(#processingStatus, or: $value.processingStatus),
      processingProgress:
          data.get(#processingProgress, or: $value.processingProgress),
      processingFailureReason: data.get(#processingFailureReason,
          or: $value.processingFailureReason),
      fileDetailsAvailability: data.get(#fileDetailsAvailability,
          or: $value.fileDetailsAvailability),
      processingIssuesAvailability: data.get(#processingIssuesAvailability,
          or: $value.processingIssuesAvailability),
      tagSuggestionsAvailability: data.get(#tagSuggestionsAvailability,
          or: $value.tagSuggestionsAvailability),
      editorSuggestionsAvailability: data.get(#editorSuggestionsAvailability,
          or: $value.editorSuggestionsAvailability),
      thumbnailsAvailability:
          data.get(#thumbnailsAvailability, or: $value.thumbnailsAvailability));

  @override
  ProcessingDetailsModelCopyWith<$R2, ProcessingDetailsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ProcessingDetailsModelCopyWithImpl($value, $cast, t);
}
