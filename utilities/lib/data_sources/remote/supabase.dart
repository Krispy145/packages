import "dart:async";

import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/data_sources/source.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [SupabaseDataSource] is a wrapper class for [SupabaseClient]
abstract class SupabaseDataSource<T, Q> with Mappable<T> implements DataSource<T, Q> {
  SupabaseClient? _supabase;

  /// [tableName] is the name of the table
  final String tableName;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [SupabaseDataSource] constructor
  SupabaseDataSource(
    this.tableName, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    SupabaseClient? client,
  }) {
    _supabase = client ?? Supabase.instance.client;
    if (_supabase == null) {
      throw Exception("Supabase client is not initialized");
    }
  }

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  @override
  Future<T?> get(String id) async {
    return _handleRequest("GET", () async {
      final result = await _supabase!.from(tableName).select().eq("id", id).single();
      if (result.isNotEmpty) {
        return convertDataTypeFromMap(result);
      } else {
        return null;
      }
    });
  }

  @override
  Future<List<T?>> getAll() async {
    try {
      final results = await _supabase!.from(tableName).select();
      return results.map(convertDataTypeFromMap).toList();
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.supabaseDataSource]);
      return [];
    }
  }

  @override
  Future<void> delete(String id) async {
    await _handleRequest("DELETE", () async {
      await _supabase!.from(tableName).delete().eq("id", id);
      return null;
    });
  }

  @override
  Future<void> deleteAll() async {
    await _handleRequest("DELETE_ALL", () async {
      await _supabase!.from(tableName).delete();
      return null;
    });
  }

  @override
  Future<void> update(String id, T data) async {
    await _handleRequest("UPDATE", () async {
      await _supabase!.from(tableName).update(convertDataTypeToMap(data)).eq("id", id);
      return null;
    });
  }

  @override
  Future<void> updateAll(Map<String, T> data) async {
    await _handleRequest("UPDATE_ALL", () async {
      data.entries.map(
        (e) async => await _supabase!.from(tableName).update(convertDataTypeToMap(e.value)).eq("id", e.key),
      );
      return null;
    });
  }

  @override
  Future<T?> add(T data) async {
    try {
      _logRequest("ADD", tableName, data);
      AppLogger.print("Data: $data", [UtilitiesLoggers.supabaseDataSource]);
      await _supabase!.from(tableName).insert(convertDataTypeToMap(data)).then(
            (value) => AppLogger.print(
              "Response: $value",
              [UtilitiesLoggers.supabaseDataSource],
            ),
          );
      _logResponse("ADD", "Success", data);
      return data;
    } catch (e) {
      _logError("ADD", "Error", e);
      return null;
    }
  }

  @override
  Future<void> addAll(List<T> data) async {
    await _handleRequest("ADD_ALL", () async {
      data.map(
        (e) async => await _supabase!.from(tableName).insert(convertDataTypeToMap(e)),
      );
      return null;
    });
  }

  SupabaseQueryBuilder _buildQuery(Q query, SupabaseQueryBuilder table);

  @override
  Future<T?> search(Q query) async {
    final table = await _supabase!.from(tableName) as SupabaseQueryBuilder;
    final supabaseQuery = _buildQuery(query, table);
    final results = await supabaseQuery.select().limit(1);
    return results.map(convertDataTypeFromMap).toList().firstOrNull;
    // final results = await _supabase?.from(tableName);
    // final columnNames = queries.keys.toList();
    // final values = queries.values.toList();
    // final results = await _supabase!.from(tableName).select(columnNames.join(",")).eq(columnNames.join(","), values.join(","));
  }

  @override
  Future<List<T?>> searchAll(Q query) async {
    final table = await _supabase!.from(tableName) as SupabaseQueryBuilder;
    final supabaseQuery = _buildQuery(query, table);
    final results = await supabaseQuery.select().limit(12);
    return results.map(convertDataTypeFromMap).toList();
    // final columnNames = queries.keys.toList();
    // final values = queries.values.toList();
    // final results = await _supabase!.from(tableName).select(columnNames.join(",")).eq(columnNames.join(","), values.join(","));
    // return results.map(convertDataTypeFromMap).toList();
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

  Future<T?> _handleRequest(
    String method,
    Future<T?> Function() apiCall,
  ) async {
    try {
      _logRequest(method, tableName, null);
      final response = await apiCall();
      _logResponse(method, "Success", response);
      return response;
    } catch (error) {
      _logError(method, "Error", error);
      return null;
    }
  }
}
