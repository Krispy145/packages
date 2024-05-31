// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'suggestions_model.dart';

class SuggestionsModelMapper extends ClassMapperBase<SuggestionsModel> {
  SuggestionsModelMapper._();

  static SuggestionsModelMapper? _instance;
  static SuggestionsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SuggestionsModelMapper._());
      TagSuggestionModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SuggestionsModel';

  static List<String>? _$processingErrors(SuggestionsModel v) =>
      v.processingErrors;
  static const Field<SuggestionsModel, List<String>> _f$processingErrors =
      Field('processingErrors', _$processingErrors, opt: true);
  static List<String>? _$processingWarnings(SuggestionsModel v) =>
      v.processingWarnings;
  static const Field<SuggestionsModel, List<String>> _f$processingWarnings =
      Field('processingWarnings', _$processingWarnings, opt: true);
  static List<String>? _$processingHints(SuggestionsModel v) =>
      v.processingHints;
  static const Field<SuggestionsModel, List<String>> _f$processingHints =
      Field('processingHints', _$processingHints, opt: true);
  static List<TagSuggestionModel>? _$tagSuggestions(SuggestionsModel v) =>
      v.tagSuggestions;
  static const Field<SuggestionsModel, List<TagSuggestionModel>>
      _f$tagSuggestions = Field('tagSuggestions', _$tagSuggestions, opt: true);
  static List<String>? _$editorSuggestions(SuggestionsModel v) =>
      v.editorSuggestions;
  static const Field<SuggestionsModel, List<String>> _f$editorSuggestions =
      Field('editorSuggestions', _$editorSuggestions, opt: true);

  @override
  final MappableFields<SuggestionsModel> fields = const {
    #processingErrors: _f$processingErrors,
    #processingWarnings: _f$processingWarnings,
    #processingHints: _f$processingHints,
    #tagSuggestions: _f$tagSuggestions,
    #editorSuggestions: _f$editorSuggestions,
  };

  static SuggestionsModel _instantiate(DecodingData data) {
    return SuggestionsModel(
        processingErrors: data.dec(_f$processingErrors),
        processingWarnings: data.dec(_f$processingWarnings),
        processingHints: data.dec(_f$processingHints),
        tagSuggestions: data.dec(_f$tagSuggestions),
        editorSuggestions: data.dec(_f$editorSuggestions));
  }

  @override
  final Function instantiate = _instantiate;

  static SuggestionsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SuggestionsModel>(map);
  }

  static SuggestionsModel fromJson(String json) {
    return ensureInitialized().decodeJson<SuggestionsModel>(json);
  }
}

mixin SuggestionsModelMappable {
  String toJson() {
    return SuggestionsModelMapper.ensureInitialized()
        .encodeJson<SuggestionsModel>(this as SuggestionsModel);
  }

  Map<String, dynamic> toMap() {
    return SuggestionsModelMapper.ensureInitialized()
        .encodeMap<SuggestionsModel>(this as SuggestionsModel);
  }

  SuggestionsModelCopyWith<SuggestionsModel, SuggestionsModel, SuggestionsModel>
      get copyWith => _SuggestionsModelCopyWithImpl(
          this as SuggestionsModel, $identity, $identity);
  @override
  String toString() {
    return SuggestionsModelMapper.ensureInitialized()
        .stringifyValue(this as SuggestionsModel);
  }

  @override
  bool operator ==(Object other) {
    return SuggestionsModelMapper.ensureInitialized()
        .equalsValue(this as SuggestionsModel, other);
  }

  @override
  int get hashCode {
    return SuggestionsModelMapper.ensureInitialized()
        .hashValue(this as SuggestionsModel);
  }
}

extension SuggestionsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SuggestionsModel, $Out> {
  SuggestionsModelCopyWith<$R, SuggestionsModel, $Out>
      get $asSuggestionsModel =>
          $base.as((v, t, t2) => _SuggestionsModelCopyWithImpl(v, t, t2));
}

abstract class SuggestionsModelCopyWith<$R, $In extends SuggestionsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get processingErrors;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get processingWarnings;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get processingHints;
  ListCopyWith<
      $R,
      TagSuggestionModel,
      TagSuggestionModelCopyWith<$R, TagSuggestionModel,
          TagSuggestionModel>>? get tagSuggestions;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get editorSuggestions;
  $R call(
      {List<String>? processingErrors,
      List<String>? processingWarnings,
      List<String>? processingHints,
      List<TagSuggestionModel>? tagSuggestions,
      List<String>? editorSuggestions});
  SuggestionsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SuggestionsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SuggestionsModel, $Out>
    implements SuggestionsModelCopyWith<$R, SuggestionsModel, $Out> {
  _SuggestionsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SuggestionsModel> $mapper =
      SuggestionsModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get processingErrors => $value.processingErrors != null
          ? ListCopyWith(
              $value.processingErrors!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(processingErrors: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get processingWarnings => $value.processingWarnings != null
          ? ListCopyWith(
              $value.processingWarnings!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(processingWarnings: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get processingHints => $value.processingHints != null
          ? ListCopyWith(
              $value.processingHints!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(processingHints: v))
          : null;
  @override
  ListCopyWith<
      $R,
      TagSuggestionModel,
      TagSuggestionModelCopyWith<$R, TagSuggestionModel,
          TagSuggestionModel>>? get tagSuggestions =>
      $value.tagSuggestions != null
          ? ListCopyWith($value.tagSuggestions!, (v, t) => v.copyWith.$chain(t),
              (v) => call(tagSuggestions: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get editorSuggestions => $value.editorSuggestions != null
          ? ListCopyWith(
              $value.editorSuggestions!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(editorSuggestions: v))
          : null;
  @override
  $R call(
          {Object? processingErrors = $none,
          Object? processingWarnings = $none,
          Object? processingHints = $none,
          Object? tagSuggestions = $none,
          Object? editorSuggestions = $none}) =>
      $apply(FieldCopyWithData({
        if (processingErrors != $none) #processingErrors: processingErrors,
        if (processingWarnings != $none)
          #processingWarnings: processingWarnings,
        if (processingHints != $none) #processingHints: processingHints,
        if (tagSuggestions != $none) #tagSuggestions: tagSuggestions,
        if (editorSuggestions != $none) #editorSuggestions: editorSuggestions
      }));
  @override
  SuggestionsModel $make(CopyWithData data) => SuggestionsModel(
      processingErrors:
          data.get(#processingErrors, or: $value.processingErrors),
      processingWarnings:
          data.get(#processingWarnings, or: $value.processingWarnings),
      processingHints: data.get(#processingHints, or: $value.processingHints),
      tagSuggestions: data.get(#tagSuggestions, or: $value.tagSuggestions),
      editorSuggestions:
          data.get(#editorSuggestions, or: $value.editorSuggestions));

  @override
  SuggestionsModelCopyWith<$R2, SuggestionsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SuggestionsModelCopyWithImpl($value, $cast, t);
}
