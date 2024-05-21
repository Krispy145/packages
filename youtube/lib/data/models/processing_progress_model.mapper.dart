// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'processing_progress_model.dart';

class ProcessingProgressModelMapper
    extends ClassMapperBase<ProcessingProgressModel> {
  ProcessingProgressModelMapper._();

  static ProcessingProgressModelMapper? _instance;
  static ProcessingProgressModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ProcessingProgressModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProcessingProgressModel';

  static int? _$partsTotal(ProcessingProgressModel v) => v.partsTotal;
  static const Field<ProcessingProgressModel, int> _f$partsTotal =
      Field('partsTotal', _$partsTotal, key: 'parts_total', opt: true);
  static int? _$partsProcessed(ProcessingProgressModel v) => v.partsProcessed;
  static const Field<ProcessingProgressModel, int> _f$partsProcessed = Field(
      'partsProcessed', _$partsProcessed,
      key: 'parts_processed', opt: true);
  static int? _$timeLeftMs(ProcessingProgressModel v) => v.timeLeftMs;
  static const Field<ProcessingProgressModel, int> _f$timeLeftMs =
      Field('timeLeftMs', _$timeLeftMs, key: 'time_left_ms', opt: true);

  @override
  final MappableFields<ProcessingProgressModel> fields = const {
    #partsTotal: _f$partsTotal,
    #partsProcessed: _f$partsProcessed,
    #timeLeftMs: _f$timeLeftMs,
  };

  static ProcessingProgressModel _instantiate(DecodingData data) {
    return ProcessingProgressModel(
        partsTotal: data.dec(_f$partsTotal),
        partsProcessed: data.dec(_f$partsProcessed),
        timeLeftMs: data.dec(_f$timeLeftMs));
  }

  @override
  final Function instantiate = _instantiate;

  static ProcessingProgressModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProcessingProgressModel>(map);
  }

  static ProcessingProgressModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProcessingProgressModel>(json);
  }
}

mixin ProcessingProgressModelMappable {
  String toJson() {
    return ProcessingProgressModelMapper.ensureInitialized()
        .encodeJson<ProcessingProgressModel>(this as ProcessingProgressModel);
  }

  Map<String, dynamic> toMap() {
    return ProcessingProgressModelMapper.ensureInitialized()
        .encodeMap<ProcessingProgressModel>(this as ProcessingProgressModel);
  }

  ProcessingProgressModelCopyWith<ProcessingProgressModel,
          ProcessingProgressModel, ProcessingProgressModel>
      get copyWith => _ProcessingProgressModelCopyWithImpl(
          this as ProcessingProgressModel, $identity, $identity);
  @override
  String toString() {
    return ProcessingProgressModelMapper.ensureInitialized()
        .stringifyValue(this as ProcessingProgressModel);
  }

  @override
  bool operator ==(Object other) {
    return ProcessingProgressModelMapper.ensureInitialized()
        .equalsValue(this as ProcessingProgressModel, other);
  }

  @override
  int get hashCode {
    return ProcessingProgressModelMapper.ensureInitialized()
        .hashValue(this as ProcessingProgressModel);
  }
}

extension ProcessingProgressModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProcessingProgressModel, $Out> {
  ProcessingProgressModelCopyWith<$R, ProcessingProgressModel, $Out>
      get $asProcessingProgressModel => $base
          .as((v, t, t2) => _ProcessingProgressModelCopyWithImpl(v, t, t2));
}

abstract class ProcessingProgressModelCopyWith<
    $R,
    $In extends ProcessingProgressModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? partsTotal, int? partsProcessed, int? timeLeftMs});
  ProcessingProgressModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ProcessingProgressModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProcessingProgressModel, $Out>
    implements
        ProcessingProgressModelCopyWith<$R, ProcessingProgressModel, $Out> {
  _ProcessingProgressModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProcessingProgressModel> $mapper =
      ProcessingProgressModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? partsTotal = $none,
          Object? partsProcessed = $none,
          Object? timeLeftMs = $none}) =>
      $apply(FieldCopyWithData({
        if (partsTotal != $none) #partsTotal: partsTotal,
        if (partsProcessed != $none) #partsProcessed: partsProcessed,
        if (timeLeftMs != $none) #timeLeftMs: timeLeftMs
      }));
  @override
  ProcessingProgressModel $make(CopyWithData data) => ProcessingProgressModel(
      partsTotal: data.get(#partsTotal, or: $value.partsTotal),
      partsProcessed: data.get(#partsProcessed, or: $value.partsProcessed),
      timeLeftMs: data.get(#timeLeftMs, or: $value.timeLeftMs));

  @override
  ProcessingProgressModelCopyWith<$R2, ProcessingProgressModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ProcessingProgressModelCopyWithImpl($value, $cast, t);
}
