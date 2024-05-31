// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'resource_id_model.dart';

class ResourceIdModelMapper extends ClassMapperBase<ResourceIdModel> {
  ResourceIdModelMapper._();

  static ResourceIdModelMapper? _instance;
  static ResourceIdModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResourceIdModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResourceIdModel';

  static String _$kind(ResourceIdModel v) => v.kind;
  static const Field<ResourceIdModel, String> _f$kind = Field('kind', _$kind);
  static String _$videoId(ResourceIdModel v) => v.videoId;
  static const Field<ResourceIdModel, String> _f$videoId =
      Field('videoId', _$videoId);

  @override
  final MappableFields<ResourceIdModel> fields = const {
    #kind: _f$kind,
    #videoId: _f$videoId,
  };

  static ResourceIdModel _instantiate(DecodingData data) {
    return ResourceIdModel(
        kind: data.dec(_f$kind), videoId: data.dec(_f$videoId));
  }

  @override
  final Function instantiate = _instantiate;

  static ResourceIdModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResourceIdModel>(map);
  }

  static ResourceIdModel fromJson(String json) {
    return ensureInitialized().decodeJson<ResourceIdModel>(json);
  }
}

mixin ResourceIdModelMappable {
  String toJson() {
    return ResourceIdModelMapper.ensureInitialized()
        .encodeJson<ResourceIdModel>(this as ResourceIdModel);
  }

  Map<String, dynamic> toMap() {
    return ResourceIdModelMapper.ensureInitialized()
        .encodeMap<ResourceIdModel>(this as ResourceIdModel);
  }

  ResourceIdModelCopyWith<ResourceIdModel, ResourceIdModel, ResourceIdModel>
      get copyWith => _ResourceIdModelCopyWithImpl(
          this as ResourceIdModel, $identity, $identity);
  @override
  String toString() {
    return ResourceIdModelMapper.ensureInitialized()
        .stringifyValue(this as ResourceIdModel);
  }

  @override
  bool operator ==(Object other) {
    return ResourceIdModelMapper.ensureInitialized()
        .equalsValue(this as ResourceIdModel, other);
  }

  @override
  int get hashCode {
    return ResourceIdModelMapper.ensureInitialized()
        .hashValue(this as ResourceIdModel);
  }
}

extension ResourceIdModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResourceIdModel, $Out> {
  ResourceIdModelCopyWith<$R, ResourceIdModel, $Out> get $asResourceIdModel =>
      $base.as((v, t, t2) => _ResourceIdModelCopyWithImpl(v, t, t2));
}

abstract class ResourceIdModelCopyWith<$R, $In extends ResourceIdModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? kind, String? videoId});
  ResourceIdModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResourceIdModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResourceIdModel, $Out>
    implements ResourceIdModelCopyWith<$R, ResourceIdModel, $Out> {
  _ResourceIdModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResourceIdModel> $mapper =
      ResourceIdModelMapper.ensureInitialized();
  @override
  $R call({String? kind, String? videoId}) => $apply(FieldCopyWithData(
      {if (kind != null) #kind: kind, if (videoId != null) #videoId: videoId}));
  @override
  ResourceIdModel $make(CopyWithData data) => ResourceIdModel(
      kind: data.get(#kind, or: $value.kind),
      videoId: data.get(#videoId, or: $value.videoId));

  @override
  ResourceIdModelCopyWith<$R2, ResourceIdModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResourceIdModelCopyWithImpl($value, $cast, t);
}
