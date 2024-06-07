import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/text/store.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/helpers/tuples.dart";

part "store.g.dart";

class PermissionsFormFieldStore = _PermissionsFormFieldStore with _$PermissionsFormFieldStore;

abstract class _PermissionsFormFieldStore extends BaseFormFieldStore<Pair<String, UserPermissionsModel>?> with Store {
  _PermissionsFormFieldStore({
    required super.value,
    required super.onValueChanged,
    required this.options,
    required super.title,
  });

  @observable
  UserPermissionsModel? selectedPermission;

  @observable
  Pair<String, UserPermissionsModel>? currentValue;

  late final textFieldStore = TextFormFieldStore(
    value: value?.first ?? "",
    onValueChanged: (newValue) {
      if (newValue == null) return;
      currentValue = Pair(newValue, selectedPermission ?? UserPermissionsModel.viewExample);
    },
    title: title,
  );

  @observable
  ObservableMap<String, PermissionLevel> optionsMap = ObservableMap.of({
    "can_create": PermissionLevel.no,
    "can_read": PermissionLevel.no,
    "can_update": PermissionLevel.no,
    "can_delete": PermissionLevel.no,
  });

  @action
  void updatePermission(String key, PermissionLevel value) {
    optionsMap[key] = value;
    currentValue = Pair(currentValue?.first ?? "", UserPermissionsModel.fromMap(optionsMap));
  }

  @action
  void saveCurrentValues() {
    onValueChanged(currentValue);
  }

  final List<PermissionLevel> options;
}
