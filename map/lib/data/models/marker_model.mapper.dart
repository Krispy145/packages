// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'marker_model.dart';

class MarkerModelMapper extends ClassMapperBase<MarkerModel> {
  MarkerModelMapper._();

  static MarkerModelMapper? _instance;
  static MarkerModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MarkerModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MarkerModel';

  static String _$id(MarkerModel v) => v.id;
  static const Field<MarkerModel, String> _f$id = Field('id', _$id);
  static double _$score(MarkerModel v) => v.score;
  static const Field<MarkerModel, double> _f$score = Field('score', _$score);
  static LatLngMapper _$position(MarkerModel v) => v.position;
  static const Field<MarkerModel, LatLngMapper> _f$position =
      Field('position', _$position);

  @override
  final MappableFields<MarkerModel> fields = const {
    #id: _f$id,
    #score: _f$score,
    #position: _f$position,
  };

  static MarkerModel _instantiate(DecodingData data) {
    return MarkerModel(
        id: data.dec(_f$id),
        score: data.dec(_f$score),
        position: data.dec(_f$position));
  }

  @override
  final Function instantiate = _instantiate;

  static MarkerModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MarkerModel>(map);
  }

  static MarkerModel fromJson(String json) {
    return ensureInitialized().decodeJson<MarkerModel>(json);
  }
}

mixin MarkerModelMappable {
  String toJson() {
    return MarkerModelMapper.ensureInitialized()
        .encodeJson<MarkerModel>(this as MarkerModel);
  }

  Map<String, dynamic> toMap() {
    return MarkerModelMapper.ensureInitialized()
        .encodeMap<MarkerModel>(this as MarkerModel);
  }

  MarkerModelCopyWith<MarkerModel, MarkerModel, MarkerModel> get copyWith =>
      _MarkerModelCopyWithImpl(this as MarkerModel, $identity, $identity);
  @override
  String toString() {
    return MarkerModelMapper.ensureInitialized()
        .stringifyValue(this as MarkerModel);
  }

  @override
  bool operator ==(Object other) {
    return MarkerModelMapper.ensureInitialized()
        .equalsValue(this as MarkerModel, other);
  }

  @override
  int get hashCode {
    return MarkerModelMapper.ensureInitialized().hashValue(this as MarkerModel);
  }
}

extension MarkerModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MarkerModel, $Out> {
  MarkerModelCopyWith<$R, MarkerModel, $Out> get $asMarkerModel =>
      $base.as((v, t, t2) => _MarkerModelCopyWithImpl(v, t, t2));
}

abstract class MarkerModelCopyWith<$R, $In extends MarkerModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, double? score, LatLngMapper? position});
  MarkerModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MarkerModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MarkerModel, $Out>
    implements MarkerModelCopyWith<$R, MarkerModel, $Out> {
  _MarkerModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MarkerModel> $mapper =
      MarkerModelMapper.ensureInitialized();
  @override
  $R call({String? id, double? score, LatLngMapper? position}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (score != null) #score: score,
        if (position != null) #position: position
      }));
  @override
  MarkerModel $make(CopyWithData data) => MarkerModel(
      id: data.get(#id, or: $value.id),
      score: data.get(#score, or: $value.score),
      position: data.get(#position, or: $value.position));

  @override
  MarkerModelCopyWith<$R2, MarkerModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MarkerModelCopyWithImpl($value, $cast, t);
}
