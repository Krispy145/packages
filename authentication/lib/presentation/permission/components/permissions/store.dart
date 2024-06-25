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
  }) : super(title: initialValue?.role ?? "No Initial Role Title");

  late final TextFormFieldStore roleStore = TextFormFieldStore(
    initialValue: value?.role,
    onValueChanged: (role) {
      onValueChanged((value ?? PermissionModel.anonymous).copyWith(role: role));
    },
    title: "Role",
  );
  late final Map<String, List<ChipsFormFieldStore<PermissionLevel>>> roleFields = collectionPermissions((value ?? PermissionModel.anonymous).permissions);

  @observable
  bool isHovered = false;

  @action
  void setHovered(bool value) {
    isHovered = value;
  }

  Map<String, List<ChipsFormFieldStore<PermissionLevel>>> collectionPermissions(Map<String, UserPermissionsModel> permissions) {
    final collection = permissions.map(
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
                  final newPermissions = (value ?? PermissionModel.anonymous).permissions;
                  newPermissions[key] = changedPermissionLevel(userPermission, crud, collectionSelection);
                  onValueChanged((value ?? PermissionModel.anonymous).copyWith(permissions: newPermissions));
                },
              )
                ..loadFiltersModels()
                ..selectFilter(filtersFromUserPermissions(crud, userPermission));
            },
          ).toList(),
        );
      },
    );
    return collection;
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

  UserPermissionsModel changedPermissionLevel(UserPermissionsModel crudOption, CRUD crud, List<PermissionLevel> permissionLevels) {
    if (permissionLevels.length > 1) throw Exception("Only one permission level can be selected");
    if (crud == CRUD.create) {
      return crudOption.copyWith(canCreate: permissionLevels.firstOrNull);
    } else if (crud == CRUD.read) {
      return crudOption.copyWith(canRead: permissionLevels.firstOrNull);
    } else if (crud == CRUD.update) {
      return crudOption.copyWith(canUpdate: permissionLevels.firstOrNull);
    } else if (crud == CRUD.delete) {
      return crudOption.copyWith(canDelete: permissionLevels.firstOrNull);
    }
    throw Exception("Invalid CRUD option");
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
