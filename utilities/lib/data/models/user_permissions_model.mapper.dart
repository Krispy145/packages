// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_permissions_model.dart';

class PermissionLevelMapper extends EnumMapper<PermissionLevel> {
  PermissionLevelMapper._();

  static PermissionLevelMapper? _instance;
  static PermissionLevelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PermissionLevelMapper._());
    }
    return _instance!;
  }

  static PermissionLevel fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PermissionLevel decode(dynamic value) {
    switch (value) {
      case 'yes':
        return PermissionLevel.yes;
      case 'no':
        return PermissionLevel.no;
      case 'review':
        return PermissionLevel.review;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PermissionLevel self) {
    switch (self) {
      case PermissionLevel.yes:
        return 'yes';
      case PermissionLevel.no:
        return 'no';
      case PermissionLevel.review:
        return 'review';
    }
  }
}

extension PermissionLevelMapperExtension on PermissionLevel {
  String toValue() {
    PermissionLevelMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PermissionLevel>(this) as String;
  }
}

class UserPermissionsModelMapper extends ClassMapperBase<UserPermissionsModel> {
  UserPermissionsModelMapper._();

  static UserPermissionsModelMapper? _instance;
  static UserPermissionsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserPermissionsModelMapper._());
      PermissionLevelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserPermissionsModel';

  static PermissionLevel _$canCreate(UserPermissionsModel v) => v.canCreate;
  static const Field<UserPermissionsModel, PermissionLevel> _f$canCreate =
      Field('canCreate', _$canCreate,
          key: 'can_create', opt: true, def: PermissionLevel.no);
  static PermissionLevel _$canRead(UserPermissionsModel v) => v.canRead;
  static const Field<UserPermissionsModel, PermissionLevel> _f$canRead = Field(
      'canRead', _$canRead,
      key: 'can_read', opt: true, def: PermissionLevel.no);
  static PermissionLevel _$canUpdate(UserPermissionsModel v) => v.canUpdate;
  static const Field<UserPermissionsModel, PermissionLevel> _f$canUpdate =
      Field('canUpdate', _$canUpdate,
          key: 'can_update', opt: true, def: PermissionLevel.no);
  static PermissionLevel _$canDelete(UserPermissionsModel v) => v.canDelete;
  static const Field<UserPermissionsModel, PermissionLevel> _f$canDelete =
      Field('canDelete', _$canDelete,
          key: 'can_delete', opt: true, def: PermissionLevel.no);

  @override
  final MappableFields<UserPermissionsModel> fields = const {
    #canCreate: _f$canCreate,
    #canRead: _f$canRead,
    #canUpdate: _f$canUpdate,
    #canDelete: _f$canDelete,
  };

  static UserPermissionsModel _instantiate(DecodingData data) {
    return UserPermissionsModel(
        canCreate: data.dec(_f$canCreate),
        canRead: data.dec(_f$canRead),
        canUpdate: data.dec(_f$canUpdate),
        canDelete: data.dec(_f$canDelete));
  }

  @override
  final Function instantiate = _instantiate;

  static UserPermissionsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserPermissionsModel>(map);
  }

  static UserPermissionsModel fromJson(String json) {
    return ensureInitialized().decodeJson<UserPermissionsModel>(json);
  }
}

mixin UserPermissionsModelMappable {
  String toJson() {
    return UserPermissionsModelMapper.ensureInitialized()
        .encodeJson<UserPermissionsModel>(this as UserPermissionsModel);
  }

  Map<String, dynamic> toMap() {
    return UserPermissionsModelMapper.ensureInitialized()
        .encodeMap<UserPermissionsModel>(this as UserPermissionsModel);
  }

  UserPermissionsModelCopyWith<UserPermissionsModel, UserPermissionsModel,
          UserPermissionsModel>
      get copyWith => _UserPermissionsModelCopyWithImpl(
          this as UserPermissionsModel, $identity, $identity);
  @override
  String toString() {
    return UserPermissionsModelMapper.ensureInitialized()
        .stringifyValue(this as UserPermissionsModel);
  }

  @override
  bool operator ==(Object other) {
    return UserPermissionsModelMapper.ensureInitialized()
        .equalsValue(this as UserPermissionsModel, other);
  }

  @override
  int get hashCode {
    return UserPermissionsModelMapper.ensureInitialized()
        .hashValue(this as UserPermissionsModel);
  }
}

extension UserPermissionsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserPermissionsModel, $Out> {
  UserPermissionsModelCopyWith<$R, UserPermissionsModel, $Out>
      get $asUserPermissionsModel =>
          $base.as((v, t, t2) => _UserPermissionsModelCopyWithImpl(v, t, t2));
}

abstract class UserPermissionsModelCopyWith<
    $R,
    $In extends UserPermissionsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {PermissionLevel? canCreate,
      PermissionLevel? canRead,
      PermissionLevel? canUpdate,
      PermissionLevel? canDelete});
  UserPermissionsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserPermissionsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserPermissionsModel, $Out>
    implements UserPermissionsModelCopyWith<$R, UserPermissionsModel, $Out> {
  _UserPermissionsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserPermissionsModel> $mapper =
      UserPermissionsModelMapper.ensureInitialized();
  @override
  $R call(
          {PermissionLevel? canCreate,
          PermissionLevel? canRead,
          PermissionLevel? canUpdate,
          PermissionLevel? canDelete}) =>
      $apply(FieldCopyWithData({
        if (canCreate != null) #canCreate: canCreate,
        if (canRead != null) #canRead: canRead,
        if (canUpdate != null) #canUpdate: canUpdate,
        if (canDelete != null) #canDelete: canDelete
      }));
  @override
  UserPermissionsModel $make(CopyWithData data) => UserPermissionsModel(
      canCreate: data.get(#canCreate, or: $value.canCreate),
      canRead: data.get(#canRead, or: $value.canRead),
      canUpdate: data.get(#canUpdate, or: $value.canUpdate),
      canDelete: data.get(#canDelete, or: $value.canDelete));

  @override
  UserPermissionsModelCopyWith<$R2, UserPermissionsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UserPermissionsModelCopyWithImpl($value, $cast, t);
}
