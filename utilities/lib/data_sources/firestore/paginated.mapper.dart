// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'paginated.dart';

class FirestoreResponseModelMapper
    extends ClassMapperBase<FirestoreResponseModel> {
  FirestoreResponseModelMapper._();

  static FirestoreResponseModelMapper? _instance;
  static FirestoreResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FirestoreResponseModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FirestoreResponseModel';
  @override
  Function get typeFactory => <T>(f) => f<FirestoreResponseModel<T>>();

  static QueryDocumentSnapshot<Map<String, dynamic>>? _$lastDocumentSnapshot(
          FirestoreResponseModel v) =>
      v.lastDocumentSnapshot;
  static const Field<FirestoreResponseModel,
          QueryDocumentSnapshot<Map<String, dynamic>>> _f$lastDocumentSnapshot =
      Field('lastDocumentSnapshot', _$lastDocumentSnapshot, opt: true);

  @override
  final MappableFields<FirestoreResponseModel> fields = const {
    #lastDocumentSnapshot: _f$lastDocumentSnapshot,
  };

  static FirestoreResponseModel<T> _instantiate<T>(DecodingData data) {
    return FirestoreResponseModel(
        lastDocumentSnapshot: data.dec(_f$lastDocumentSnapshot));
  }

  @override
  final Function instantiate = _instantiate;

  static FirestoreResponseModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FirestoreResponseModel<T>>(map);
  }

  static FirestoreResponseModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<FirestoreResponseModel<T>>(json);
  }
}

mixin FirestoreResponseModelMappable<T> {
  String toJson() {
    return FirestoreResponseModelMapper.ensureInitialized()
        .encodeJson<FirestoreResponseModel<T>>(
            this as FirestoreResponseModel<T>);
  }

  Map<String, dynamic> toMap() {
    return FirestoreResponseModelMapper.ensureInitialized()
        .encodeMap<FirestoreResponseModel<T>>(
            this as FirestoreResponseModel<T>);
  }

  FirestoreResponseModelCopyWith<FirestoreResponseModel<T>,
          FirestoreResponseModel<T>, FirestoreResponseModel<T>, T>
      get copyWith => _FirestoreResponseModelCopyWithImpl(
          this as FirestoreResponseModel<T>, $identity, $identity);
  @override
  String toString() {
    return FirestoreResponseModelMapper.ensureInitialized()
        .stringifyValue(this as FirestoreResponseModel<T>);
  }

  @override
  bool operator ==(Object other) {
    return FirestoreResponseModelMapper.ensureInitialized()
        .equalsValue(this as FirestoreResponseModel<T>, other);
  }

  @override
  int get hashCode {
    return FirestoreResponseModelMapper.ensureInitialized()
        .hashValue(this as FirestoreResponseModel<T>);
  }
}

extension FirestoreResponseModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, FirestoreResponseModel<T>, $Out> {
  FirestoreResponseModelCopyWith<$R, FirestoreResponseModel<T>, $Out, T>
      get $asFirestoreResponseModel =>
          $base.as((v, t, t2) => _FirestoreResponseModelCopyWithImpl(v, t, t2));
}

abstract class FirestoreResponseModelCopyWith<
    $R,
    $In extends FirestoreResponseModel<T>,
    $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({QueryDocumentSnapshot<Map<String, dynamic>>? lastDocumentSnapshot});
  FirestoreResponseModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FirestoreResponseModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, FirestoreResponseModel<T>, $Out>
    implements
        FirestoreResponseModelCopyWith<$R, FirestoreResponseModel<T>, $Out, T> {
  _FirestoreResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FirestoreResponseModel> $mapper =
      FirestoreResponseModelMapper.ensureInitialized();
  @override
  $R call({Object? lastDocumentSnapshot = $none}) => $apply(FieldCopyWithData({
        if (lastDocumentSnapshot != $none)
          #lastDocumentSnapshot: lastDocumentSnapshot
      }));
  @override
  FirestoreResponseModel<T> $make(CopyWithData data) => FirestoreResponseModel(
      lastDocumentSnapshot:
          data.get(#lastDocumentSnapshot, or: $value.lastDocumentSnapshot));

  @override
  FirestoreResponseModelCopyWith<$R2, FirestoreResponseModel<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _FirestoreResponseModelCopyWithImpl($value, $cast, t);
}
