// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tag_suggestion_model.dart';

class TagSuggestionModelMapper extends ClassMapperBase<TagSuggestionModel> {
  TagSuggestionModelMapper._();

  static TagSuggestionModelMapper? _instance;
  static TagSuggestionModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagSuggestionModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TagSuggestionModel';

  static String? _$tag(TagSuggestionModel v) => v.tag;
  static const Field<TagSuggestionModel, String> _f$tag =
      Field('tag', _$tag, opt: true);
  static List<String>? _$categoryRestricts(TagSuggestionModel v) =>
      v.categoryRestricts;
  static const Field<TagSuggestionModel, List<String>> _f$categoryRestricts =
      Field('categoryRestricts', _$categoryRestricts, opt: true);

  @override
  final MappableFields<TagSuggestionModel> fields = const {
    #tag: _f$tag,
    #categoryRestricts: _f$categoryRestricts,
  };

  static TagSuggestionModel _instantiate(DecodingData data) {
    return TagSuggestionModel(
        tag: data.dec(_f$tag),
        categoryRestricts: data.dec(_f$categoryRestricts));
  }

  @override
  final Function instantiate = _instantiate;

  static TagSuggestionModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagSuggestionModel>(map);
  }

  static TagSuggestionModel fromJson(String json) {
    return ensureInitialized().decodeJson<TagSuggestionModel>(json);
  }
}

mixin TagSuggestionModelMappable {
  String toJson() {
    return TagSuggestionModelMapper.ensureInitialized()
        .encodeJson<TagSuggestionModel>(this as TagSuggestionModel);
  }

  Map<String, dynamic> toMap() {
    return TagSuggestionModelMapper.ensureInitialized()
        .encodeMap<TagSuggestionModel>(this as TagSuggestionModel);
  }

  TagSuggestionModelCopyWith<TagSuggestionModel, TagSuggestionModel,
          TagSuggestionModel>
      get copyWith => _TagSuggestionModelCopyWithImpl(
          this as TagSuggestionModel, $identity, $identity);
  @override
  String toString() {
    return TagSuggestionModelMapper.ensureInitialized()
        .stringifyValue(this as TagSuggestionModel);
  }

  @override
  bool operator ==(Object other) {
    return TagSuggestionModelMapper.ensureInitialized()
        .equalsValue(this as TagSuggestionModel, other);
  }

  @override
  int get hashCode {
    return TagSuggestionModelMapper.ensureInitialized()
        .hashValue(this as TagSuggestionModel);
  }
}

extension TagSuggestionModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TagSuggestionModel, $Out> {
  TagSuggestionModelCopyWith<$R, TagSuggestionModel, $Out>
      get $asTagSuggestionModel =>
          $base.as((v, t, t2) => _TagSuggestionModelCopyWithImpl(v, t, t2));
}

abstract class TagSuggestionModelCopyWith<$R, $In extends TagSuggestionModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get categoryRestricts;
  $R call({String? tag, List<String>? categoryRestricts});
  TagSuggestionModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TagSuggestionModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagSuggestionModel, $Out>
    implements TagSuggestionModelCopyWith<$R, TagSuggestionModel, $Out> {
  _TagSuggestionModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagSuggestionModel> $mapper =
      TagSuggestionModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get categoryRestricts => $value.categoryRestricts != null
          ? ListCopyWith(
              $value.categoryRestricts!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(categoryRestricts: v))
          : null;
  @override
  $R call({Object? tag = $none, Object? categoryRestricts = $none}) =>
      $apply(FieldCopyWithData({
        if (tag != $none) #tag: tag,
        if (categoryRestricts != $none) #categoryRestricts: categoryRestricts
      }));
  @override
  TagSuggestionModel $make(CopyWithData data) => TagSuggestionModel(
      tag: data.get(#tag, or: $value.tag),
      categoryRestricts:
          data.get(#categoryRestricts, or: $value.categoryRestricts));

  @override
  TagSuggestionModelCopyWith<$R2, TagSuggestionModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagSuggestionModelCopyWithImpl($value, $cast, t);
}
