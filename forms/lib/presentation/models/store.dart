import 'package:mobx/mobx.dart';

part 'store.g.dart';

/// [FormsModelStore] is a MobX store that is used to store data in a map and convert it to a model.
/// It is used to store data that is used in forms.
/// required an `emptyOrEditModel` that is used to create a new model or edit an existing one.
class FormsModelStore<T> = _FormsModelStore<T> with _$FormsModelStore<T>;

abstract class _FormsModelStore<T> with Store {
  _FormsModelStore({
    T? initialModel,
    this.onModelChanged,
  }) : currentModel = initialModel;

  /// Callback that is called whenever the map is changed.
  final void Function(T)? onModelChanged;

  @observable
  late T? currentModel;

  @action
  void saveModel() {
    onModelChanged?.call(currentModel as T);
  }

  /// Inserts a new key-value pair into the map.
  /// The list of keys is used to navigate the nested maps.
  // @action
  // void updateValue(T updatedModel) {
  //   // final mergedMap = {
  //   //   if(currentModel!=null)...convertToMap(currentModel),
  //   //   ...convertToMap(updatedModel),
  //   // };
  //   final mergedMap = currentModel == null
  //       ? convertToMap(updatedModel)
  //       : {
  //           ...convertToMap(currentModel as T),
  //           ...convertToMap(updatedModel),
  //         };
  //   onModelChanged?.call(convertDataTypeFromMap(mergedMap));
  // }
}
