// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'localized_model.dart';

class LocalizedModelMapper extends ClassMapperBase<LocalizedModel> {
  LocalizedModelMapper._();

  static LocalizedModelMapper? _instance;
  static LocalizedModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocalizedModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LocalizedModel';

  static String _$title(LocalizedModel v) => v.title;
  static const Field<LocalizedModel, String> _f$title = Field('title', _$title);
  static String _$description(LocalizedModel v) => v.description;
  static const Field<LocalizedModel, String> _f$description =
      Field('description', _$description);

  @override
  final MappableFields<LocalizedModel> fields = const {
    #title: _f$title,
    #description: _f$description,
  };

  static LocalizedModel _instantiate(DecodingData data) {
    return LocalizedModel(
        title: data.dec(_f$title), description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static LocalizedModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocalizedModel>(map);
  }

  static LocalizedModel fromJson(String json) {
    return ensureInitialized().decodeJson<LocalizedModel>(json);
  }
}

mixin LocalizedModelMappable {
  String toJson() {
    return LocalizedModelMapper.ensureInitialized()
        .encodeJson<LocalizedModel>(this as LocalizedModel);
  }

  Map<String, dynamic> toMap() {
    return LocalizedModelMapper.ensureInitialized()
        .encodeMap<LocalizedModel>(this as LocalizedModel);
  }

  LocalizedModelCopyWith<LocalizedModel, LocalizedModel, LocalizedModel>
      get copyWith => _LocalizedModelCopyWithImpl(
          this as LocalizedModel, $identity, $identity);
  @override
  String toString() {
    return LocalizedModelMapper.ensureInitialized()
        .stringifyValue(this as LocalizedModel);
  }

  @override
  bool operator ==(Object other) {
    return LocalizedModelMapper.ensureInitialized()
        .equalsValue(this as LocalizedModel, other);
  }

  @override
  int get hashCode {
    return LocalizedModelMapper.ensureInitialized()
        .hashValue(this as LocalizedModel);
  }
}

extension LocalizedModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocalizedModel, $Out> {
  LocalizedModelCopyWith<$R, LocalizedModel, $Out> get $asLocalizedModel =>
      $base.as((v, t, t2) => _LocalizedModelCopyWithImpl(v, t, t2));
}

abstract class LocalizedModelCopyWith<$R, $In extends LocalizedModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title, String? description});
  LocalizedModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LocalizedModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocalizedModel, $Out>
    implements LocalizedModelCopyWith<$R, LocalizedModel, $Out> {
  _LocalizedModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocalizedModel> $mapper =
      LocalizedModelMapper.ensureInitialized();
  @override
  $R call({String? title, String? description}) => $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (description != null) #description: description
      }));
  @override
  LocalizedModel $make(CopyWithData data) => LocalizedModel(
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description));

  @override
  LocalizedModelCopyWith<$R2, LocalizedModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LocalizedModelCopyWithImpl($value, $cast, t);
}
