import "package:authentication/data/models/review_model.dart";
import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/chips/store.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/models/user_permissions_model.dart";

part "store.g.dart";

/// [PermissionsFormFieldStore] is a class that uses [_PermissionsFormFieldStore] to manage state of the filters feature.
class PermissionsFormFieldStore = _PermissionsFormFieldStore with _$PermissionsFormFieldStore;

/// [_PermissionsFormFieldStore] is a class that manages the state of the filters feature.
abstract class _PermissionsFormFieldStore extends BaseFormFieldStore<UserPermissionsModel> with Store {
  _PermissionsFormFieldStore({
    required super.title,
    required super.initialValue,
    required super.onValueChanged,
  }) {
    _initializeRoleFields();
  }

  late final List<ChipsFormFieldStore<PermissionLevel>> roleFields = [];

  @action
  void _initializeRoleFields() {
    final collectionPermissions = CRUD.values.map(
      (crud) {
        return ChipsFormFieldStore<PermissionLevel>(
          crud.name.toUpperCase(),
          loadFilters: () async {
            return optionsBasedOnCRUD(crud);
          },
          canSelectMultiple: false,
          onSelectedChanged: (collectionSelection) {
            final updatedUserPermission = changedPermissionLevel(value!, crud, collectionSelection);
            value = updatedUserPermission;
            onValueChanged(value);
          },
        )
          ..loadFiltersModels()
          ..selectFilter(filtersFromUserPermissions(crud, value!));
      },
    ).toList();
    roleFields.addAll(collectionPermissions);
  }

  // late final List<ChipsFormFieldStore<PermissionLevel>> collectionPermissions = CRUD.values.map(
  //   (crud) {
  //     return ChipsFormFieldStore<PermissionLevel>(
  //       crud.name.toUpperCase(),
  //       loadFilters: () async {
  //         return optionsBasedOnCRUD(crud);
  //       },
  //       canSelectMultiple: false,
  //       onSelectedChanged: (collectionSelection) {
  //         final updatedUserPermission = changedPermissionLevel(value!, crud, collectionSelection);
  //         value = updatedUserPermission;
  //         onValueChanged(value);
  //       },
  //     )
  //       ..loadFiltersModels()
  //       ..selectFilter(filtersFromUserPermissions(crud, value!));
  //   },
  // ).toList();

  List<PermissionLevel> optionsBasedOnCRUD(CRUD crud) {
    switch (crud) {
      case CRUD.create:
        return [PermissionLevel.yes, PermissionLevel.no, PermissionLevel.review];
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
