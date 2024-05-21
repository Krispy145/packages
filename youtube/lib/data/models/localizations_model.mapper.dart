// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'localizations_model.dart';

class LocalizationsModelMapper extends ClassMapperBase<LocalizationsModel> {
  LocalizationsModelMapper._();

  static LocalizationsModelMapper? _instance;
  static LocalizationsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocalizationsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LocalizationsModel';

  static String? _$title(LocalizationsModel v) => v.title;
  static const Field<LocalizationsModel, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$description(LocalizationsModel v) => v.description;
  static const Field<LocalizationsModel, String> _f$description =
      Field('description', _$description, opt: true);

  @override
  final MappableFields<LocalizationsModel> fields = const {
    #title: _f$title,
    #description: _f$description,
  };

  static LocalizationsModel _instantiate(DecodingData data) {
    return LocalizationsModel(
        title: data.dec(_f$title), description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static LocalizationsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocalizationsModel>(map);
  }

  static LocalizationsModel fromJson(String json) {
    return ensureInitialized().decodeJson<LocalizationsModel>(json);
  }
}

mixin LocalizationsModelMappable {
  String toJson() {
    return LocalizationsModelMapper.ensureInitialized()
        .encodeJson<LocalizationsModel>(this as LocalizationsModel);
  }

  Map<String, dynamic> toMap() {
    return LocalizationsModelMapper.ensureInitialized()
        .encodeMap<LocalizationsModel>(this as LocalizationsModel);
  }

  LocalizationsModelCopyWith<LocalizationsModel, LocalizationsModel,
          LocalizationsModel>
      get copyWith => _LocalizationsModelCopyWithImpl(
          this as LocalizationsModel, $identity, $identity);
  @override
  String toString() {
    return LocalizationsModelMapper.ensureInitialized()
        .stringifyValue(this as LocalizationsModel);
  }

  @override
  bool operator ==(Object other) {
    return LocalizationsModelMapper.ensureInitialized()
        .equalsValue(this as LocalizationsModel, other);
  }

  @override
  int get hashCode {
    return LocalizationsModelMapper.ensureInitialized()
        .hashValue(this as LocalizationsModel);
  }
}

extension LocalizationsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocalizationsModel, $Out> {
  LocalizationsModelCopyWith<$R, LocalizationsModel, $Out>
      get $asLocalizationsModel =>
          $base.as((v, t, t2) => _LocalizationsModelCopyWithImpl(v, t, t2));
}

abstract class LocalizationsModelCopyWith<$R, $In extends LocalizationsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title, String? description});
  LocalizationsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LocalizationsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocalizationsModel, $Out>
    implements LocalizationsModelCopyWith<$R, LocalizationsModel, $Out> {
  _LocalizationsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocalizationsModel> $mapper =
      LocalizationsModelMapper.ensureInitialized();
  @override
  $R call({Object? title = $none, Object? description = $none}) =>
      $apply(FieldCopyWithData({
        if (title != $none) #title: title,
        if (description != $none) #description: description
      }));
  @override
  LocalizationsModel $make(CopyWithData data) => LocalizationsModel(
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description));

  @override
  LocalizationsModelCopyWith<$R2, LocalizationsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LocalizationsModelCopyWithImpl($value, $cast, t);
}
