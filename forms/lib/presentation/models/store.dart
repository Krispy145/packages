// import 'package:forms/utils/loggers.dart';
// import 'package:mobx/mobx.dart';
// import 'package:utilities/data_sources/source.dart';
// import 'package:utilities/logger/logger.dart';

// part 'store.g.dart';

// /// [FormsModelsStore] is a MobX store that is used to store data in a map and convert it to a model.
// /// It is used to store data that is used in forms.
// /// required an `emptyOrEditModel` that is used to create a new model or edit an existing one.
// class FormsModelsStore<T> = _FormsModelsStore<T> with _$FormsModelsStore<T>;

// abstract class _FormsModelsStore<T> with Store implements Mappable<T> {
//   /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
//   final T Function(Map<String, dynamic>) convertDataTypeFromMap;

//   /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
//   final Map<String, dynamic> Function(T) convertDataTypeToMap;

//   _FormsModelsStore({
//     required T emptyOrEditModel,
//     required this.convertDataTypeFromMap,
//     required this.convertDataTypeToMap,
//     required this.onModelChanged,
//   }) : mapData = ObservableMap.of(convertDataTypeToMap(emptyOrEditModel));

//   @override
//   T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

//   @override
//   Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

//   /// Callback that is called whenever the map is changed.
//   final void Function(T)? onModelChanged;

//   @observable
//   late final ObservableMap<String, dynamic> mapData;

//   /// Inserts a new key-value pair into the map.
//   /// The list of keys is used to navigate the nested maps.
//   @action
//   void updateValue<V>(List<String> keys, V value) {
//     AppLogger
//       ..print("updateValue: $keys, $value", [FormsLoggers.models])
//       ..print("before: $mapData", [FormsLoggers.models]);
//     _setNestedValue(mapData, keys, value);
//     AppLogger.print("after: $mapData", [FormsLoggers.models]);
//     onModelChanged?.call(convertDataTypeFromMap(mapData));
//   }

//   void _setNestedValue(ObservableMap<String, dynamic> currentMap, List<String> keys, dynamic value) {
//     for (var i = 0; i < keys.length - 1; i++) {
//       if (!currentMap.containsKey(keys[i])) {
//         // Automatically convert nested maps to observable maps
//         currentMap[keys[i]] = ObservableMap<String, dynamic>();
//       } else if (currentMap[keys[i]] is! ObservableMap<String, dynamic>) {
//         // Convert nested map to observable map if it's not already
//         currentMap[keys[i]] = ObservableMap<String, dynamic>.of(currentMap[keys[i]] as Map<String, dynamic>);
//       }
//       currentMap = currentMap[keys[i]] as ObservableMap<String, dynamic>;
//     }
//     currentMap[keys.last] = value;
//   }
// }
