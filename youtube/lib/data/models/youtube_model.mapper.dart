// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'youtube_model.dart';

class YoutubeModelMapper extends ClassMapperBase<YoutubeModel> {
  YoutubeModelMapper._();

  static YoutubeModelMapper? _instance;
  static YoutubeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = YoutubeModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'YoutubeModel';

  static String _$id(YoutubeModel v) => v.id;
  static const Field<YoutubeModel, String> _f$id = Field('id', _$id);
  static String? _$name(YoutubeModel v) => v.name;
  static const Field<YoutubeModel, String> _f$name =
      Field('name', _$name, opt: true);

  @override
  final MappableFields<YoutubeModel> fields = const {
    #id: _f$id,
    #name: _f$name,
  };

  static YoutubeModel _instantiate(DecodingData data) {
    return YoutubeModel(id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static YoutubeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<YoutubeModel>(map);
  }

  static YoutubeModel fromJson(String json) {
    return ensureInitialized().decodeJson<YoutubeModel>(json);
  }
}

mixin YoutubeModelMappable {
  String toJson() {
    return YoutubeModelMapper.ensureInitialized()
        .encodeJson<YoutubeModel>(this as YoutubeModel);
  }

  Map<String, dynamic> toMap() {
    return YoutubeModelMapper.ensureInitialized()
        .encodeMap<YoutubeModel>(this as YoutubeModel);
  }

  YoutubeModelCopyWith<YoutubeModel, YoutubeModel, YoutubeModel> get copyWith =>
      _YoutubeModelCopyWithImpl(this as YoutubeModel, $identity, $identity);
  @override
  String toString() {
    return YoutubeModelMapper.ensureInitialized()
        .stringifyValue(this as YoutubeModel);
  }

  @override
  bool operator ==(Object other) {
    return YoutubeModelMapper.ensureInitialized()
        .equalsValue(this as YoutubeModel, other);
  }

  @override
  int get hashCode {
    return YoutubeModelMapper.ensureInitialized()
        .hashValue(this as YoutubeModel);
  }
}

extension YoutubeModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, YoutubeModel, $Out> {
  YoutubeModelCopyWith<$R, YoutubeModel, $Out> get $asYoutubeModel =>
      $base.as((v, t, t2) => _YoutubeModelCopyWithImpl(v, t, t2));
}

abstract class YoutubeModelCopyWith<$R, $In extends YoutubeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name});
  YoutubeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _YoutubeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, YoutubeModel, $Out>
    implements YoutubeModelCopyWith<$R, YoutubeModel, $Out> {
  _YoutubeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<YoutubeModel> $mapper =
      YoutubeModelMapper.ensureInitialized();
  @override
  $R call({String? id, Object? name = $none}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (name != $none) #name: name}));
  @override
  YoutubeModel $make(CopyWithData data) => YoutubeModel(
      id: data.get(#id, or: $value.id), name: data.get(#name, or: $value.name));

  @override
  YoutubeModelCopyWith<$R2, YoutubeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _YoutubeModelCopyWithImpl($value, $cast, t);
}
