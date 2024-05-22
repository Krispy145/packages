// import "package:utilities/data/models/basic_search_query_model.dart";
// import "package:utilities/data_sources/local/hive/hive.dart";

// import "_source.dart";

// /// [HiveDODataSource] is a class that implements [DODataSource] interface.
// class HiveDODataSource<T> extends HiveDataSource<T, BasicSearchQueryModel> implements DODataSource<T> {
//   // Simulated in-memory data store
//   final Map<String, T> _dataStore = {};

//   /// [HiveDODataSource] constructor.
//   HiveDODataSource(
//     super.tableName, {
//     required super.convertDataTypeFromMap,
//     required super.convertDataTypeToMap,
//   });
  
//   @override
//   Future<T?> search(BasicSearchQueryModel query) {
//     // TODO: implement search
//     throw UnimplementedError();
//   }
  
//   @override
//   Future<List<T?>> searchAll(BasicSearchQueryModel query) {
//     // TODO: implement searchAll
//     throw UnimplementedError();
//   }
// }
