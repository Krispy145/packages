// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'review_model.dart';

class CRUDMapper extends EnumMapper<CRUD> {
  CRUDMapper._();

  static CRUDMapper? _instance;
  static CRUDMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CRUDMapper._());
    }
    return _instance!;
  }

  static CRUD fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CRUD decode(dynamic value) {
    switch (value) {
      case 'create':
        return CRUD.create;
      case 'read':
        return CRUD.read;
      case 'update':
        return CRUD.update;
      case 'delete':
        return CRUD.delete;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CRUD self) {
    switch (self) {
      case CRUD.create:
        return 'create';
      case CRUD.read:
        return 'read';
      case CRUD.update:
        return 'update';
      case CRUD.delete:
        return 'delete';
    }
  }
}

extension CRUDMapperExtension on CRUD {
  String toValue() {
    CRUDMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CRUD>(this) as String;
  }
}

class ReviewModelMapper extends ClassMapperBase<ReviewModel> {
  ReviewModelMapper._();

  static ReviewModelMapper? _instance;
  static ReviewModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReviewModelMapper._());
      CRUDMapper.ensureInitialized();
      UserModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ReviewModel';

  static String _$id(ReviewModel v) => v.id;
  static const Field<ReviewModel, String> _f$id = Field('id', _$id);
  static CRUD _$crud(ReviewModel v) => v.crud;
  static const Field<ReviewModel, CRUD> _f$crud = Field('crud', _$crud);
  static String _$documentReference(ReviewModel v) => v.documentReference;
  static const Field<ReviewModel, String> _f$documentReference = Field(
      'documentReference', _$documentReference,
      key: 'document_reference');
  static UserModel _$user(ReviewModel v) => v.user;
  static const Field<ReviewModel, UserModel> _f$user = Field('user', _$user);
  static Map<String, dynamic>? _$writeData(ReviewModel v) => v.writeData;
  static const Field<ReviewModel, Map<String, dynamic>> _f$writeData =
      Field('writeData', _$writeData, key: 'write_data', opt: true);
  static DateTime _$createdAtTimestamp(ReviewModel v) => v.createdAtTimestamp;
  static const Field<ReviewModel, DateTime> _f$createdAtTimestamp = Field(
      'createdAtTimestamp', _$createdAtTimestamp,
      key: 'created_at_timestamp');
  static String _$title(ReviewModel v) => v.title;
  static const Field<ReviewModel, String> _f$title = Field('title', _$title);

  @override
  final MappableFields<ReviewModel> fields = const {
    #id: _f$id,
    #crud: _f$crud,
    #documentReference: _f$documentReference,
    #user: _f$user,
    #writeData: _f$writeData,
    #createdAtTimestamp: _f$createdAtTimestamp,
    #title: _f$title,
  };

  static ReviewModel _instantiate(DecodingData data) {
    return ReviewModel(
        id: data.dec(_f$id),
        crud: data.dec(_f$crud),
        documentReference: data.dec(_f$documentReference),
        user: data.dec(_f$user),
        writeData: data.dec(_f$writeData),
        createdAtTimestamp: data.dec(_f$createdAtTimestamp),
        title: data.dec(_f$title));
  }

  @override
  final Function instantiate = _instantiate;

  static ReviewModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReviewModel>(map);
  }

  static ReviewModel fromJson(String json) {
    return ensureInitialized().decodeJson<ReviewModel>(json);
  }
}

mixin ReviewModelMappable {
  String toJson() {
    return ReviewModelMapper.ensureInitialized()
        .encodeJson<ReviewModel>(this as ReviewModel);
  }

  Map<String, dynamic> toMap() {
    return ReviewModelMapper.ensureInitialized()
        .encodeMap<ReviewModel>(this as ReviewModel);
  }

  ReviewModelCopyWith<ReviewModel, ReviewModel, ReviewModel> get copyWith =>
      _ReviewModelCopyWithImpl(this as ReviewModel, $identity, $identity);
  @override
  String toString() {
    return ReviewModelMapper.ensureInitialized()
        .stringifyValue(this as ReviewModel);
  }

  @override
  bool operator ==(Object other) {
    return ReviewModelMapper.ensureInitialized()
        .equalsValue(this as ReviewModel, other);
  }

  @override
  int get hashCode {
    return ReviewModelMapper.ensureInitialized().hashValue(this as ReviewModel);
  }
}

extension ReviewModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReviewModel, $Out> {
  ReviewModelCopyWith<$R, ReviewModel, $Out> get $asReviewModel =>
      $base.as((v, t, t2) => _ReviewModelCopyWithImpl(v, t, t2));
}

abstract class ReviewModelCopyWith<$R, $In extends ReviewModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserModelCopyWith<$R, UserModel, UserModel> get user;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get writeData;
  $R call(
      {String? id,
      CRUD? crud,
      String? documentReference,
      UserModel? user,
      Map<String, dynamic>? writeData,
      DateTime? createdAtTimestamp,
      String? title});
  ReviewModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReviewModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReviewModel, $Out>
    implements ReviewModelCopyWith<$R, ReviewModel, $Out> {
  _ReviewModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReviewModel> $mapper =
      ReviewModelMapper.ensureInitialized();
  @override
  UserModelCopyWith<$R, UserModel, UserModel> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get writeData => $value.writeData != null
          ? MapCopyWith(
              $value.writeData!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(writeData: v))
          : null;
  @override
  $R call(
          {String? id,
          CRUD? crud,
          String? documentReference,
          UserModel? user,
          Object? writeData = $none,
          DateTime? createdAtTimestamp,
          String? title}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (crud != null) #crud: crud,
        if (documentReference != null) #documentReference: documentReference,
        if (user != null) #user: user,
        if (writeData != $none) #writeData: writeData,
        if (createdAtTimestamp != null) #createdAtTimestamp: createdAtTimestamp,
        if (title != null) #title: title
      }));
  @override
  ReviewModel $make(CopyWithData data) => ReviewModel(
      id: data.get(#id, or: $value.id),
      crud: data.get(#crud, or: $value.crud),
      documentReference:
          data.get(#documentReference, or: $value.documentReference),
      user: data.get(#user, or: $value.user),
      writeData: data.get(#writeData, or: $value.writeData),
      createdAtTimestamp:
          data.get(#createdAtTimestamp, or: $value.createdAtTimestamp),
      title: data.get(#title, or: $value.title));

  @override
  ReviewModelCopyWith<$R2, ReviewModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ReviewModelCopyWithImpl($value, $cast, t);
}
