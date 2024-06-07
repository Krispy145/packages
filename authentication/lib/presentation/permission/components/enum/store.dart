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

  @observable
  Pair<String, UserPermissionsModel>? currentValue;

  late final collectionStore = DropdownFormFieldStore<String>(
    value: initialSelectedCollection.split("/").first,
    labelBuilder: (collection) => collection,
    initialItems: collections,
    onValueChanged: (newValue) {
      onValueChanged(Pair("${newValue ?? initialSelectedCollection}/all", selectedPermission ?? UserPermissionsModel.viewExample));
    },
    title: title,
  );

  late final List<DropdownFormFieldStore<PermissionLevel>> permissions = CRUD.values.map((e) {
    return DropdownFormFieldStore<PermissionLevel>(
      value: _getPermissionLevel(e),
      labelBuilder: (permission) => permission.name,
      initialItems: PermissionLevel.values,
      onValueChanged: (newValue) {
        selectedPermission = UserPermissionsModel.fromMap({initialSelectedCollection: newValue});
        onValueChanged(Pair(_setCollectionString(currentValue?.first), selectedPermission ?? UserPermissionsModel.viewExample));
      },
      title: e.name,
    );
  }).toList();

  @action
  void updatePermission(String key, PermissionLevel value) {
    final optionsMap = currentValue?.second.toMap() ?? {};
    currentValue = Pair(_setCollectionString(currentValue?.first), UserPermissionsModel.fromMap(optionsMap));
  }

  PermissionLevel _getPermissionLevel(CRUD key) {
    PermissionLevel result;
    final _userPermissionsModel = value?.second;
    switch (key) {
      case CRUD.create:
        result = _userPermissionsModel?.canCreate ?? PermissionLevel.no;
      case CRUD.read:
        result = _userPermissionsModel?.canRead ?? PermissionLevel.no;
      case CRUD.update:
        result = _userPermissionsModel?.canUpdate ?? PermissionLevel.no;
      case CRUD.delete:
        result = _userPermissionsModel?.canDelete ?? PermissionLevel.no;
    }
    print(result);
    return result;
  }

  String _setCollectionString(String? collection) {
    if (collection == null) return "$initialSelectedCollection/all";
    return "${collection.split("/").first}/all";
  }
}
