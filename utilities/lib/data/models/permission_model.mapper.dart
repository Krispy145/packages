// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'permission_model.dart';

class PermissionModelMapper extends ClassMapperBase<PermissionModel> {
  PermissionModelMapper._();

  static PermissionModelMapper? _instance;
  static PermissionModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PermissionModelMapper._());
      UserPermissionsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PermissionModel';

  static String _$id(PermissionModel v) => v.id;
  static const Field<PermissionModel, String> _f$id = Field('id', _$id);
  static Map<String, UserPermissionsModel> _$permissions(PermissionModel v) =>
      v.permissions;
  static const Field<PermissionModel, Map<String, UserPermissionsModel>>
      _f$permissions = Field('permissions', _$permissions);
  static Map<String, bool>? _$reviews(PermissionModel v) => v.reviews;
  static const Field<PermissionModel, Map<String, bool>> _f$reviews =
      Field('reviews', _$reviews, opt: true);

  @override
  final MappableFields<PermissionModel> fields = const {
    #id: _f$id,
    #permissions: _f$permissions,
    #reviews: _f$reviews,
  };

  static PermissionModel _instantiate(DecodingData data) {
    return PermissionModel(
        id: data.dec(_f$id),
        permissions: data.dec(_f$permissions),
        reviews: data.dec(_f$reviews));
  }

  @override
  final Function instantiate = _instantiate;

  static PermissionModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PermissionModel>(map);
  }

  static PermissionModel fromJson(String json) {
    return ensureInitialized().decodeJson<PermissionModel>(json);
  }
}

mixin PermissionModelMappable {
  String toJson() {
    return PermissionModelMapper.ensureInitialized()
        .encodeJson<PermissionModel>(this as PermissionModel);
  }

  Map<String, dynamic> toMap() {
    return PermissionModelMapper.ensureInitialized()
        .encodeMap<PermissionModel>(this as PermissionModel);
  }

  PermissionModelCopyWith<PermissionModel, PermissionModel, PermissionModel>
      get copyWith => _PermissionModelCopyWithImpl(
          this as PermissionModel, $identity, $identity);
  @override
  String toString() {
    return PermissionModelMapper.ensureInitialized()
        .stringifyValue(this as PermissionModel);
  }

  @override
  bool operator ==(Object other) {
    return PermissionModelMapper.ensureInitialized()
        .equalsValue(this as PermissionModel, other);
  }

  @override
  int get hashCode {
    return PermissionModelMapper.ensureInitialized()
        .hashValue(this as PermissionModel);
  }
}

extension PermissionModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PermissionModel, $Out> {
  PermissionModelCopyWith<$R, PermissionModel, $Out> get $asPermissionModel =>
      $base.as((v, t, t2) => _PermissionModelCopyWithImpl(v, t, t2));
}

abstract class PermissionModelCopyWith<$R, $In extends PermissionModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
      $R,
      String,
      UserPermissionsModel,
      UserPermissionsModelCopyWith<$R, UserPermissionsModel,
          UserPermissionsModel>> get permissions;
  MapCopyWith<$R, String, bool, ObjectCopyWith<$R, bool, bool>>? get reviews;
  $R call(
      {String? id,
      Map<String, UserPermissionsModel>? permissions,
      Map<String, bool>? reviews});
  PermissionModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PermissionModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PermissionModel, $Out>
    implements PermissionModelCopyWith<$R, PermissionModel, $Out> {
  _PermissionModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PermissionModel> $mapper =
      PermissionModelMapper.ensureInitialized();
  @override
  MapCopyWith<
      $R,
      String,
      UserPermissionsModel,
      UserPermissionsModelCopyWith<$R, UserPermissionsModel,
          UserPermissionsModel>> get permissions => MapCopyWith(
      $value.permissions,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(permissions: v));
  @override
  MapCopyWith<$R, String, bool, ObjectCopyWith<$R, bool, bool>>? get reviews =>
      $value.reviews != null
          ? MapCopyWith(
              $value.reviews!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(reviews: v))
          : null;
  @override
  $R call(
          {String? id,
          Map<String, UserPermissionsModel>? permissions,
          Object? reviews = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (permissions != null) #permissions: permissions,
        if (reviews != $none) #reviews: reviews
      }));
  @override
  PermissionModel $make(CopyWithData data) => PermissionModel(
      id: data.get(#id, or: $value.id),
      permissions: data.get(#permissions, or: $value.permissions),
      reviews: data.get(#reviews, or: $value.reviews));

  @override
  PermissionModelCopyWith<$R2, PermissionModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PermissionModelCopyWithImpl($value, $cast, t);
}
