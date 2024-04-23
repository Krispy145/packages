import 'package:forms/presentation/components/base/store.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/data_sources/source.dart';

part 'store.g.dart';

/// [FormsModelStore] is a MobX store that is used to store data in a map and convert it to a model.
/// It is used to store data that is used in forms.
/// required an `emptyOrEditModel` that is used to create a new model or edit an existing one.
class FormsModelStore<T> = _FormsModelStore<T> with _$FormsModelStore<T>;

abstract class _FormsModelStore<T> with Store, Mappable<T> {
  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;
  final Map<String, BaseFormFieldStore<T>> fields;

  _FormsModelStore({
    T? initialModel,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    required this.fields,
    required this.onModelChanged,
  }) : currentModel = initialModel;

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  /// Callback that is called whenever the map is changed.
  final void Function(T)? onModelChanged;

  @observable
  late T? currentModel;

  @action
  void updateModel(T updatedModel) {
    currentModel = updatedModel;
    onModelChanged?.call(updatedModel);
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
