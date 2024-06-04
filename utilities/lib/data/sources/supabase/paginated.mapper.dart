// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'paginated.dart';

class SupabaseResponseModelMapper
    extends ClassMapperBase<SupabaseResponseModel> {
  SupabaseResponseModelMapper._();

  static SupabaseResponseModelMapper? _instance;
  static SupabaseResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SupabaseResponseModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SupabaseResponseModel';
  @override
  Function get typeFactory => <T>(f) => f<SupabaseResponseModel<T>>();

  static PostgrestResponse<dynamic>? _$lastPostgresResponse(
          SupabaseResponseModel v) =>
      v.lastPostgresResponse;
  static dynamic _arg$lastPostgresResponse<T>(f) => f<PostgrestResponse<T>>();
  static const Field<SupabaseResponseModel, PostgrestResponse<dynamic>>
      _f$lastPostgresResponse = Field(
          'lastPostgresResponse', _$lastPostgresResponse,
          opt: true, arg: _arg$lastPostgresResponse);

  @override
  final MappableFields<SupabaseResponseModel> fields = const {
    #lastPostgresResponse: _f$lastPostgresResponse,
  };

  static SupabaseResponseModel<T> _instantiate<T>(DecodingData data) {
    return SupabaseResponseModel(
        lastPostgresResponse: data.dec(_f$lastPostgresResponse));
  }

  @override
  final Function instantiate = _instantiate;

  static SupabaseResponseModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SupabaseResponseModel<T>>(map);
  }

  static SupabaseResponseModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<SupabaseResponseModel<T>>(json);
  }
}

mixin SupabaseResponseModelMappable<T> {
  String toJson() {
    return SupabaseResponseModelMapper.ensureInitialized()
        .encodeJson<SupabaseResponseModel<T>>(this as SupabaseResponseModel<T>);
  }

  Map<String, dynamic> toMap() {
    return SupabaseResponseModelMapper.ensureInitialized()
        .encodeMap<SupabaseResponseModel<T>>(this as SupabaseResponseModel<T>);
  }

  SupabaseResponseModelCopyWith<SupabaseResponseModel<T>,
          SupabaseResponseModel<T>, SupabaseResponseModel<T>, T>
      get copyWith => _SupabaseResponseModelCopyWithImpl(
          this as SupabaseResponseModel<T>, $identity, $identity);
  @override
  String toString() {
    return SupabaseResponseModelMapper.ensureInitialized()
        .stringifyValue(this as SupabaseResponseModel<T>);
  }

  @override
  bool operator ==(Object other) {
    return SupabaseResponseModelMapper.ensureInitialized()
        .equalsValue(this as SupabaseResponseModel<T>, other);
  }

  @override
  int get hashCode {
    return SupabaseResponseModelMapper.ensureInitialized()
        .hashValue(this as SupabaseResponseModel<T>);
  }
}

extension SupabaseResponseModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, SupabaseResponseModel<T>, $Out> {
  SupabaseResponseModelCopyWith<$R, SupabaseResponseModel<T>, $Out, T>
      get $asSupabaseResponseModel =>
          $base.as((v, t, t2) => _SupabaseResponseModelCopyWithImpl(v, t, t2));
}

abstract class SupabaseResponseModelCopyWith<
    $R,
    $In extends SupabaseResponseModel<T>,
    $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({PostgrestResponse<T>? lastPostgresResponse});
  SupabaseResponseModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SupabaseResponseModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, SupabaseResponseModel<T>, $Out>
    implements
        SupabaseResponseModelCopyWith<$R, SupabaseResponseModel<T>, $Out, T> {
  _SupabaseResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SupabaseResponseModel> $mapper =
      SupabaseResponseModelMapper.ensureInitialized();
  @override
  $R call({Object? lastPostgresResponse = $none}) => $apply(FieldCopyWithData({
        if (lastPostgresResponse != $none)
          #lastPostgresResponse: lastPostgresResponse
      }));
  @override
  SupabaseResponseModel<T> $make(CopyWithData data) => SupabaseResponseModel(
      lastPostgresResponse:
          data.get(#lastPostgresResponse, or: $value.lastPostgresResponse));

  @override
  SupabaseResponseModelCopyWith<$R2, SupabaseResponseModel<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SupabaseResponseModelCopyWithImpl($value, $cast, t);
}
