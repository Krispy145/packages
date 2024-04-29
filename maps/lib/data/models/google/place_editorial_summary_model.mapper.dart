// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_editorial_summary_model.dart';

class PlaceEditorialSummaryMapper
    extends ClassMapperBase<PlaceEditorialSummary> {
  PlaceEditorialSummaryMapper._();

  static PlaceEditorialSummaryMapper? _instance;
  static PlaceEditorialSummaryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaceEditorialSummaryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceEditorialSummary';

  static String? _$language(PlaceEditorialSummary v) => v.language;
  static const Field<PlaceEditorialSummary, String> _f$language =
      Field('language', _$language, opt: true);
  static String? _$overview(PlaceEditorialSummary v) => v.overview;
  static const Field<PlaceEditorialSummary, String> _f$overview =
      Field('overview', _$overview, opt: true);

  @override
  final MappableFields<PlaceEditorialSummary> fields = const {
    #language: _f$language,
    #overview: _f$overview,
  };

  static PlaceEditorialSummary _instantiate(DecodingData data) {
    return PlaceEditorialSummary(
        language: data.dec(_f$language), overview: data.dec(_f$overview));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceEditorialSummary fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceEditorialSummary>(map);
  }

  static PlaceEditorialSummary fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceEditorialSummary>(json);
  }
}

mixin PlaceEditorialSummaryMappable {
  String toJson() {
    return PlaceEditorialSummaryMapper.ensureInitialized()
        .encodeJson<PlaceEditorialSummary>(this as PlaceEditorialSummary);
  }

  Map<String, dynamic> toMap() {
    return PlaceEditorialSummaryMapper.ensureInitialized()
        .encodeMap<PlaceEditorialSummary>(this as PlaceEditorialSummary);
  }

  PlaceEditorialSummaryCopyWith<PlaceEditorialSummary, PlaceEditorialSummary,
          PlaceEditorialSummary>
      get copyWith => _PlaceEditorialSummaryCopyWithImpl(
          this as PlaceEditorialSummary, $identity, $identity);
  @override
  String toString() {
    return PlaceEditorialSummaryMapper.ensureInitialized()
        .stringifyValue(this as PlaceEditorialSummary);
  }

  @override
  bool operator ==(Object other) {
    return PlaceEditorialSummaryMapper.ensureInitialized()
        .equalsValue(this as PlaceEditorialSummary, other);
  }

  @override
  int get hashCode {
    return PlaceEditorialSummaryMapper.ensureInitialized()
        .hashValue(this as PlaceEditorialSummary);
  }
}

extension PlaceEditorialSummaryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceEditorialSummary, $Out> {
  PlaceEditorialSummaryCopyWith<$R, PlaceEditorialSummary, $Out>
      get $asPlaceEditorialSummary =>
          $base.as((v, t, t2) => _PlaceEditorialSummaryCopyWithImpl(v, t, t2));
}

abstract class PlaceEditorialSummaryCopyWith<
    $R,
    $In extends PlaceEditorialSummary,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? language, String? overview});
  PlaceEditorialSummaryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaceEditorialSummaryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceEditorialSummary, $Out>
    implements PlaceEditorialSummaryCopyWith<$R, PlaceEditorialSummary, $Out> {
  _PlaceEditorialSummaryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceEditorialSummary> $mapper =
      PlaceEditorialSummaryMapper.ensureInitialized();
  @override
  $R call({Object? language = $none, Object? overview = $none}) =>
      $apply(FieldCopyWithData({
        if (language != $none) #language: language,
        if (overview != $none) #overview: overview
      }));
  @override
  PlaceEditorialSummary $make(CopyWithData data) => PlaceEditorialSummary(
      language: data.get(#language, or: $value.language),
      overview: data.get(#overview, or: $value.overview));

  @override
  PlaceEditorialSummaryCopyWith<$R2, PlaceEditorialSummary, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlaceEditorialSummaryCopyWithImpl($value, $cast, t);
}
