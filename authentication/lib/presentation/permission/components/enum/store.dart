import "package:authentication/data/models/review_model.dart";
import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/dropdown/store.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/helpers/tuples.dart";

part "store.g.dart";

class PermissionsFormFieldStore = _PermissionsFormFieldStore with _$PermissionsFormFieldStore;

abstract class _PermissionsFormFieldStore extends BaseFormFieldStore<Pair<String, UserPermissionsModel>?> with Store {
  final String initialSelectedCollection;
  final List<String> collections;
  _PermissionsFormFieldStore({
    required this.initialSelectedCollection,
    required this.collections,
    required super.value,
    required super.onValueChanged,
    required super.title,
  });

  @observable
  UserPermissionsModel? selectedPermission;

  late final collectionStore = DropdownFormFieldStore<String>(
    value: _setCollectionString(initialSelectedCollection).split("/").first,
    labelBuilder: (collection) => collection,
    initialItems: collections,
    onValueChanged: (newValue) {
      selectedPermission = UserPermissionsModel.fromMap({_setCollectionString(newValue): selectedPermission?.toMap() ?? {}});
      final _newPair = Pair(_setCollectionString(newValue), selectedPermission ?? UserPermissionsModel.viewExample);
      onValueChanged(_newPair);
    },
    title: title,
  );

  late final List<DropdownFormFieldStore<PermissionLevel>> permissions = CRUD.values.map((e) {
    return DropdownFormFieldStore<PermissionLevel>(
      value: _getPermissionLevel(e),
      labelBuilder: (permission) => permission.name,
      initialItems: PermissionLevel.values,
      onValueChanged: (newValue) {
        final _newPermissionsModelResult = _newPermissionsModel(e, newValue ?? PermissionLevel.no);
        final _newPair = Pair(collectionStore.value ?? initialSelectedCollection, _newPermissionsModelResult);
        onValueChanged(_newPair);
      },
      title: e.name,
    );
  }).toList();

  UserPermissionsModel _newPermissionsModel(CRUD key, PermissionLevel permissionValue) {
    switch (key) {
      case CRUD.create:
        return value!.second.copyWith(canCreate: permissionValue);
      case CRUD.read:
        return value!.second.copyWith(canRead: permissionValue);
      case CRUD.update:
        return value!.second.copyWith(canUpdate: permissionValue);
      case CRUD.delete:
        return value!.second.copyWith(canDelete: permissionValue);
      default:
        return UserPermissionsModel.viewExample;
    }
  }

  PermissionLevel _getPermissionLevel(CRUD key) {
    PermissionLevel result;
    final _userPermissionsModel = value?.second;
    switch (key) {
      case CRUD.create:
        result = _userPermissionsModel?.canCreate ?? PermissionLevel.no;
        break;
      case CRUD.read:
        result = _userPermissionsModel?.canRead ?? PermissionLevel.no;
        break;
      case CRUD.update:
        result = _userPermissionsModel?.canUpdate ?? PermissionLevel.no;
        break;
      case CRUD.delete:
        result = _userPermissionsModel?.canDelete ?? PermissionLevel.no;
        break;
    }
    return result;
  }

  String _setCollectionString(String? collection) {
    final _collectionBase = collection?.replaceAll("/all", "");
    final _initialSelectedCollection = _sanitizeCollectionString(initialSelectedCollection).split("/").first;
    return "${_collectionBase ?? _initialSelectedCollection}/all";
  }

  String _sanitizeCollectionString(String collection) {
    return collection.replaceAll("/all", "");
  }
}
