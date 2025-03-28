import "dart:async";

import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [SupabaseDataSource] is a wrapper class for [SupabaseClient]
abstract class SupabaseDataSource<T, Q>
    with Mappable<T>
    implements DataSource<T, Q> {
  SupabaseClient? _supabaseClient;

  /// [tableReference] is the name of the table
  final String tableReference;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [SupabaseDataSource] constructor
  SupabaseDataSource(
    this.tableReference, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    SupabaseClient? client,
  }) {
    _supabaseClient = client ?? Supabase.instance.client;
    if (_supabaseClient == null) {
      throw Exception("Supabase client is not initialized");
    }
  }

  late final _tableName = tableReference.split("/").last;

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  @override
  Future<Pair<RequestResponse, T?>> get(String id) async {
    var _filterBuilder =
        _supabaseClient!.from(_tableName).select().eq("id", id);
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    return _handleRequest("GET", () async {
      final result = await _filterBuilder.single();
      if (result.isNotEmpty) {
        return convertDataTypeFromMap(result);
      } else {
        return null;
      }
    });
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> getAll() async {
    var _filterBuilder = _supabaseClient!.from(_tableName).select();
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    try {
      final results = await _filterBuilder;
      return Pair(
        RequestResponse.success,
        results.map(convertDataTypeFromMap).toList(),
      );
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.supabaseDataSource]);
      return const Pair(RequestResponse.failure, []);
    }
  }

  @override
  Future<RequestResponse> delete(String id) async {
    var _filterBuilder =
        _supabaseClient!.from(_tableName).select().eq("id", id);
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    final results = await _filterBuilder.single();
    if (results.isEmpty) {
      return RequestResponse.failure;
    }
    await _handleRequest("DELETE", () async {
      await _supabaseClient!.from(_tableName).delete().eq("id", id);
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> deleteAll() async {
    var _filterBuilder = _supabaseClient!.from(_tableName).select();
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    final results = await _filterBuilder;
    if (results.isEmpty) {
      return RequestResponse.failure;
    }
    await _handleRequest("DELETE_ALL", () async {
      await _supabaseClient!.from(_tableName).delete();
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> update(String id, T data) async {
    var _filterBuilder =
        _supabaseClient!.from(_tableName).select().eq("id", id);
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    final results = await _filterBuilder.single();
    if (results.isEmpty) {
      return RequestResponse.failure;
    }
    await _handleRequest("UPDATE", () async {
      await _supabaseClient!
          .from(_tableName)
          .update(convertDataTypeToMap(data))
          .eq("id", id);
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> updateAll(Map<String, T> data) async {
    var _filterBuilder = _supabaseClient!.from(_tableName).select();
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    final results = await _filterBuilder;
    if (results.isEmpty) {
      return RequestResponse.failure;
    }
    await _handleRequest("UPDATE_ALL", () async {
      data.entries.map(
        (e) async => await _supabaseClient!
            .from(_tableName)
            .update(convertDataTypeToMap(e.value))
            .eq("id", e.key),
      );
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T data) async {
    try {
      _logRequest("ADD", tableReference, data);
      AppLogger.print("Data: $data", [UtilitiesLoggers.supabaseDataSource]);
      final convertedData = convertDataTypeToMap(data)
        ..addAll(_tableReferenceMapper(tableReference));
      await _supabaseClient!.from(_tableName).insert(convertedData).then(
            (value) => AppLogger.print(
              "Response: $value",
              [UtilitiesLoggers.supabaseDataSource],
            ),
          );
      _logResponse("ADD", "Success", data);
      return Pair(RequestResponse.success, data);
    } catch (e) {
      _logError("ADD", "Error", e);
      return const Pair(RequestResponse.failure, null);
    }
  }

  @override
  Future<RequestResponse> addAll(List<T> data) async {
    await _handleRequest("ADD_ALL", () async {
      data.map(
        (e) async {
          await add(e);
        },
      );
      return null;
    });
    return RequestResponse.success;
  }

  SupabaseQueryBuilder buildQuery(Q query, SupabaseQueryBuilder table);

  @override
  Future<Pair<RequestResponse, T?>> search(Q query) async {
    final table =
        await _supabaseClient!.from(_tableName) as SupabaseQueryBuilder;
    final supabaseQuery = buildQuery(query, table);
    var _filterBuilder = supabaseQuery.select();
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    final results = await _filterBuilder.limit(1);
    if (results.isEmpty) return const Pair(RequestResponse.failure, null);
    return Pair(
      RequestResponse.success,
      results.map(convertDataTypeFromMap).firstOrNull,
    );
    // final results = await _supabase?.from(tableName);
    // final columnNames = queries.keys.toList();
    // final values = queries.values.toList();
    // final results = await _supabase!.from(tableName).select(columnNames.join(",")).eq(columnNames.join(","), values.join(","));
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> searchAll(Q query) async {
    final table =
        await _supabaseClient!.from(_tableName) as SupabaseQueryBuilder;
    final supabaseQuery = buildQuery(query, table);
    var _filterBuilder = supabaseQuery.select();
    _filterBuilder = _filterJoinTableBuilder(_filterBuilder, tableReference);
    final results = await _filterBuilder.limit(12);
    if (results.isEmpty) return const Pair(RequestResponse.failure, []);
    return Pair(
      RequestResponse.success,
      results.map(convertDataTypeFromMap).toList(),
    );
    // final columnNames = queries.keys.toList();
    // final values = queries.values.toList();
    // final results = await _supabase!.from(tableName).select(columnNames.join(",")).eq(columnNames.join(","), values.join(","));
    // return results.map(convertDataTypeFromMap).toList();
  }

  PostgrestFilterBuilder<PostgrestList> _filterJoinTableBuilder(
    PostgrestFilterBuilder<List<Map<String, dynamic>>> _filterBuilder,
    String tableName,
  ) {
    final _tableReferenceMap = _tableReferenceMapper(tableName);
    if (_tableReferenceMap.isNotEmpty) {
      for (final entry in _tableReferenceMap.entries) {
        _filterBuilder = _filterBuilder.eq(entry.key, entry.value);
      }
    }
    return _filterBuilder;
  }

  Map<String, UUID> _tableReferenceMapper(String tableName) {
    final _tableReferences = tableName.split("/");
    final _tableReferenceIds = <UUID>[];
    final _tableReferenceNames = <String>[];
    final _tableReferenceMap = <String, UUID>{};
    for (final element in _tableReferences) {
      if (!element.isValidUUID()) {
        _tableReferenceNames.add(element);
      } else {
        _tableReferenceIds.add(element);
      }
    }

    if (_tableReferenceNames.length == _tableReferenceIds.length) {
      for (var i = 0; i < _tableReferenceNames.length; i++) {
        _tableReferenceMap[_tableReferenceNames[i]] = _tableReferenceIds[i];
      }
    }
    return _tableReferenceMap;
  }

  void _logRequest(String method, String path, T? data) {
    final logMessage = "Supabase $method: $path";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.supabaseDataSource],
      );
    } else {
      AppLogger.print(logMessage, [UtilitiesLoggers.supabaseDataSource]);
    }
  }

  void _logResponse(
    String method,
    String statusMessage,
    dynamic data,
  ) {
    final logMessage = "Supabase $method: $statusMessage";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.supabaseDataSource],
      );
    } else {
      AppLogger.print(logMessage, [UtilitiesLoggers.supabaseDataSource]);
    }
  }

  void _logError(
    String method,
    String statusMessage,
    dynamic error,
  ) {
    final logMessage = "Supabase $method Error: $statusMessage - $error";
    AppLogger.print(
      logMessage,
      [UtilitiesLoggers.supabaseDataSource],
      type: LoggerType.error,
    );
  }

  Future<Pair<RequestResponse, T?>> _handleRequest(
    String method,
    Future<T?> Function() apiCall,
  ) async {
    try {
      _logRequest(method, tableReference, null);
      final response = await apiCall();
      _logResponse(method, "Success", response);
      return Pair(RequestResponse.success, response);
    } catch (error) {
      _logError(method, "Error", error);
      return const Pair(RequestResponse.failure, null);
    }
  }
}
