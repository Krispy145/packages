import "package:authentication/data/models/review_model.dart";
import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/chips/store.dart";
import "package:forms/presentation/components/text/store.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/models/user_permissions_model.dart";

part "store.g.dart";

/// [PermissionsFormFieldStore] is a class that uses [_PermissionsFormFieldStore] to manage state of the filters feature.
class PermissionsFormFieldStore = _PermissionsFormFieldStore with _$PermissionsFormFieldStore;

/// [_PermissionsFormFieldStore] is a class that manages the state of the filters feature.
abstract class _PermissionsFormFieldStore extends BaseFormFieldStore<PermissionModel> with Store {
  _PermissionsFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
  }) : super(title: initialValue?.role ?? "No Initial Role Title") {
    _initializeRoleFields();
  }

  late final TextFormFieldStore roleStore = TextFormFieldStore(
    initialValue: value?.role,
    onValueChanged: (role) {
      onValueChanged(value!.copyWith(role: role));
    },
    title: "Role",
  );

  late final ObservableMap<String, UserPermissionsModel> newPermissions = ObservableMap<String, UserPermissionsModel>.of(value!.permissions);

  late final Map<String, List<ChipsFormFieldStore<PermissionLevel>>> roleFields = {};

  @action
  void _initializeRoleFields() {
    roleFields.addAll(collectionPermissions);
  }

  Map<String, List<ChipsFormFieldStore<PermissionLevel>>> get collectionPermissions {
    return newPermissions.map(
      (key, userPermission) {
        return MapEntry(
          key,
          CRUD.values.map(
            (crud) {
              return ChipsFormFieldStore<PermissionLevel>(
                crud.name.toUpperCase(),
                loadFilters: () async {
                  return optionsBasedOnCRUD(crud);
                },
                canSelectMultiple: false,
                onSelectedChanged: (collectionSelection) {
                  final updatedUserPermission = changedPermissionLevel(newPermissions[key]!, crud, collectionSelection);
                  newPermissions[key] = updatedUserPermission;
                  value = value!.copyWith(permissions: newPermissions);
                  onValueChanged(value);
                },
              )
                ..loadFiltersModels()
                ..selectFilter(filtersFromUserPermissions(crud, userPermission));
            },
          ).toList(),
        );
      },
    );
  }

  List<PermissionLevel> optionsBasedOnCRUD(CRUD crud) {
    switch (crud) {
      case CRUD.create:
        return [PermissionLevel.yes, PermissionLevel.no];
      case CRUD.read:
        return [PermissionLevel.yes, PermissionLevel.no];
      case CRUD.update:
        return [PermissionLevel.yes, PermissionLevel.no, PermissionLevel.review];
      case CRUD.delete:
        return [PermissionLevel.yes, PermissionLevel.no, PermissionLevel.review];
    }
  }

  UserPermissionsModel changedPermissionLevel(
    UserPermissionsModel crudOption,
    CRUD crud,
    List<PermissionLevel> permissionLevels,
  ) {
    if (permissionLevels.length > 1) throw Exception("Only one permission level can be selected");
    switch (crud) {
      case CRUD.create:
        return crudOption.copyWith(canCreate: permissionLevels.firstOrNull);
      case CRUD.read:
        return crudOption.copyWith(canRead: permissionLevels.firstOrNull);
      case CRUD.update:
        return crudOption.copyWith(canUpdate: permissionLevels.firstOrNull);
      case CRUD.delete:
        return crudOption.copyWith(canDelete: permissionLevels.firstOrNull);
      default:
        throw Exception("Invalid CRUD option");
    }
  }

  PermissionLevel filtersFromUserPermissions(CRUD crud, UserPermissionsModel userPermission) {
    switch (crud) {
      case CRUD.create:
        return userPermission.canCreate;
      case CRUD.read:
        return userPermission.canRead;
      case CRUD.update:
        return userPermission.canUpdate;
      case CRUD.delete:
        return userPermission.canDelete;
    }
  }
}
