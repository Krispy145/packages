// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'theme_model_reference.dart';

class ThemeModelReferenceMapper extends ClassMapperBase<ThemeModelReference> {
  ThemeModelReferenceMapper._();

  static ThemeModelReferenceMapper? _instance;
  static ThemeModelReferenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThemeModelReferenceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ThemeModelReference';

  static String _$themeId(ThemeModelReference v) => v.themeId;
  static const Field<ThemeModelReference, String> _f$themeId =
      Field('themeId', _$themeId);
  static String _$name(ThemeModelReference v) => v.name;
  static const Field<ThemeModelReference, String> _f$name =
      Field('name', _$name);

  @override
  final MappableFields<ThemeModelReference> fields = const {
    #themeId: _f$themeId,
    #name: _f$name,
  };

  static ThemeModelReference _instantiate(DecodingData data) {
    return ThemeModelReference(
        themeId: data.dec(_f$themeId), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static ThemeModelReference fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThemeModelReference>(map);
  }

  static ThemeModelReference fromJson(String json) {
    return ensureInitialized().decodeJson<ThemeModelReference>(json);
  }
}

mixin ThemeModelReferenceMappable {
  String toJson() {
    return ThemeModelReferenceMapper.ensureInitialized()
        .encodeJson<ThemeModelReference>(this as ThemeModelReference);
  }

  Map<String, dynamic> toMap() {
    return ThemeModelReferenceMapper.ensureInitialized()
        .encodeMap<ThemeModelReference>(this as ThemeModelReference);
  }

  ThemeModelReferenceCopyWith<ThemeModelReference, ThemeModelReference,
          ThemeModelReference>
      get copyWith => _ThemeModelReferenceCopyWithImpl(
          this as ThemeModelReference, $identity, $identity);
  @override
  String toString() {
    return ThemeModelReferenceMapper.ensureInitialized()
        .stringifyValue(this as ThemeModelReference);
  }

  @override
  bool operator ==(Object other) {
    return ThemeModelReferenceMapper.ensureInitialized()
        .equalsValue(this as ThemeModelReference, other);
  }

  @override
  int get hashCode {
    return ThemeModelReferenceMapper.ensureInitialized()
        .hashValue(this as ThemeModelReference);
  }
}

extension ThemeModelReferenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThemeModelReference, $Out> {
  ThemeModelReferenceCopyWith<$R, ThemeModelReference, $Out>
      get $asThemeModelReference =>
          $base.as((v, t, t2) => _ThemeModelReferenceCopyWithImpl(v, t, t2));
}

abstract class ThemeModelReferenceCopyWith<$R, $In extends ThemeModelReference,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? themeId, String? name});
  ThemeModelReferenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ThemeModelReferenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThemeModelReference, $Out>
    implements ThemeModelReferenceCopyWith<$R, ThemeModelReference, $Out> {
  _ThemeModelReferenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThemeModelReference> $mapper =
      ThemeModelReferenceMapper.ensureInitialized();
  @override
  $R call({String? themeId, String? name}) => $apply(FieldCopyWithData(
      {if (themeId != null) #themeId: themeId, if (name != null) #name: name}));
  @override
  ThemeModelReference $make(CopyWithData data) => ThemeModelReference(
      themeId: data.get(#themeId, or: $value.themeId),
      name: data.get(#name, or: $value.name));

  @override
  ThemeModelReferenceCopyWith<$R2, ThemeModelReference, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ThemeModelReferenceCopyWithImpl($value, $cast, t);
}
