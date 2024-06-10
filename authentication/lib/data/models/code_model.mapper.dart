// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'code_model.dart';

class CodeModelMapper extends ClassMapperBase<CodeModel> {
  CodeModelMapper._();

  static CodeModelMapper? _instance;
  static CodeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CodeModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CodeModel';

  static String _$id(CodeModel v) => v.id;
  static const Field<CodeModel, String> _f$id = Field('id', _$id);
  static String _$salt(CodeModel v) => v.salt;
  static const Field<CodeModel, String> _f$salt = Field('salt', _$salt);

  @override
  final MappableFields<CodeModel> fields = const {
    #id: _f$id,
    #salt: _f$salt,
  };

  static CodeModel _instantiate(DecodingData data) {
    return CodeModel(id: data.dec(_f$id), salt: data.dec(_f$salt));
  }

  @override
  final Function instantiate = _instantiate;

  static CodeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CodeModel>(map);
  }

  static CodeModel fromJson(String json) {
    return ensureInitialized().decodeJson<CodeModel>(json);
  }
}

mixin CodeModelMappable {
  String toJson() {
    return CodeModelMapper.ensureInitialized()
        .encodeJson<CodeModel>(this as CodeModel);
  }

  Map<String, dynamic> toMap() {
    return CodeModelMapper.ensureInitialized()
        .encodeMap<CodeModel>(this as CodeModel);
  }

  CodeModelCopyWith<CodeModel, CodeModel, CodeModel> get copyWith =>
      _CodeModelCopyWithImpl(this as CodeModel, $identity, $identity);
  @override
  String toString() {
    return CodeModelMapper.ensureInitialized()
        .stringifyValue(this as CodeModel);
  }

  @override
  bool operator ==(Object other) {
    return CodeModelMapper.ensureInitialized()
        .equalsValue(this as CodeModel, other);
  }

  @override
  int get hashCode {
    return CodeModelMapper.ensureInitialized().hashValue(this as CodeModel);
  }
}

extension CodeModelValueCopy<$R, $Out> on ObjectCopyWith<$R, CodeModel, $Out> {
  CodeModelCopyWith<$R, CodeModel, $Out> get $asCodeModel =>
      $base.as((v, t, t2) => _CodeModelCopyWithImpl(v, t, t2));
}

abstract class CodeModelCopyWith<$R, $In extends CodeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? salt});
  CodeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CodeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CodeModel, $Out>
    implements CodeModelCopyWith<$R, CodeModel, $Out> {
  _CodeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CodeModel> $mapper =
      CodeModelMapper.ensureInitialized();
  @override
  $R call({String? id, String? salt}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (salt != null) #salt: salt}));
  @override
  CodeModel $make(CopyWithData data) => CodeModel(
      id: data.get(#id, or: $value.id), salt: data.get(#salt, or: $value.salt));

  @override
  CodeModelCopyWith<$R2, CodeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CodeModelCopyWithImpl($value, $cast, t);
}
