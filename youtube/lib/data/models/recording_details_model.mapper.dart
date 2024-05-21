// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'recording_details_model.dart';

class RecordingDetailsModelMapper
    extends ClassMapperBase<RecordingDetailsModel> {
  RecordingDetailsModelMapper._();

  static RecordingDetailsModelMapper? _instance;
  static RecordingDetailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RecordingDetailsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RecordingDetailsModel';

  static DateTime? _$recordingDate(RecordingDetailsModel v) => v.recordingDate;
  static const Field<RecordingDetailsModel, DateTime> _f$recordingDate =
      Field('recordingDate', _$recordingDate, key: 'recording_date', opt: true);

  @override
  final MappableFields<RecordingDetailsModel> fields = const {
    #recordingDate: _f$recordingDate,
  };

  static RecordingDetailsModel _instantiate(DecodingData data) {
    return RecordingDetailsModel(recordingDate: data.dec(_f$recordingDate));
  }

  @override
  final Function instantiate = _instantiate;

  static RecordingDetailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RecordingDetailsModel>(map);
  }

  static RecordingDetailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<RecordingDetailsModel>(json);
  }
}

mixin RecordingDetailsModelMappable {
  String toJson() {
    return RecordingDetailsModelMapper.ensureInitialized()
        .encodeJson<RecordingDetailsModel>(this as RecordingDetailsModel);
  }

  Map<String, dynamic> toMap() {
    return RecordingDetailsModelMapper.ensureInitialized()
        .encodeMap<RecordingDetailsModel>(this as RecordingDetailsModel);
  }

  RecordingDetailsModelCopyWith<RecordingDetailsModel, RecordingDetailsModel,
          RecordingDetailsModel>
      get copyWith => _RecordingDetailsModelCopyWithImpl(
          this as RecordingDetailsModel, $identity, $identity);
  @override
  String toString() {
    return RecordingDetailsModelMapper.ensureInitialized()
        .stringifyValue(this as RecordingDetailsModel);
  }

  @override
  bool operator ==(Object other) {
    return RecordingDetailsModelMapper.ensureInitialized()
        .equalsValue(this as RecordingDetailsModel, other);
  }

  @override
  int get hashCode {
    return RecordingDetailsModelMapper.ensureInitialized()
        .hashValue(this as RecordingDetailsModel);
  }
}

extension RecordingDetailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RecordingDetailsModel, $Out> {
  RecordingDetailsModelCopyWith<$R, RecordingDetailsModel, $Out>
      get $asRecordingDetailsModel =>
          $base.as((v, t, t2) => _RecordingDetailsModelCopyWithImpl(v, t, t2));
}

abstract class RecordingDetailsModelCopyWith<
    $R,
    $In extends RecordingDetailsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({DateTime? recordingDate});
  RecordingDetailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RecordingDetailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RecordingDetailsModel, $Out>
    implements RecordingDetailsModelCopyWith<$R, RecordingDetailsModel, $Out> {
  _RecordingDetailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RecordingDetailsModel> $mapper =
      RecordingDetailsModelMapper.ensureInitialized();
  @override
  $R call({Object? recordingDate = $none}) => $apply(FieldCopyWithData(
      {if (recordingDate != $none) #recordingDate: recordingDate}));
  @override
  RecordingDetailsModel $make(CopyWithData data) => RecordingDetailsModel(
      recordingDate: data.get(#recordingDate, or: $value.recordingDate));

  @override
  RecordingDetailsModelCopyWith<$R2, RecordingDetailsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RecordingDetailsModelCopyWithImpl($value, $cast, t);
}
