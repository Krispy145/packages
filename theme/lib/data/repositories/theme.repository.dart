import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme/data/models/theme/theme.dart';
import 'package:theme/data/sources/theme/_source.dart';
import 'package:theme/data/sources/theme/assets.source.dart';
import 'package:theme/data/sources/theme/firestore.source.dart';
import 'package:theme/data/sources/theme/supabase.source.dart';

import '/data/repositories/_repositories.dart';

class ThemeConfiguration {
  final DataSourceTypes dataSourceType;
  final String? path;
  final SupabaseClient? supabaseClient;
  const ThemeConfiguration.supabase({this.dataSourceType = DataSourceTypes.supabase, required this.supabaseClient}) : path = null;

  const ThemeConfiguration.assets({this.dataSourceType = DataSourceTypes.assets, required String rootBundleKey})
      : supabaseClient = null,
        path = rootBundleKey;

  const ThemeConfiguration.local({this.dataSourceType = DataSourceTypes.local})
      : path = null,
        supabaseClient = null;

  const ThemeConfiguration.api({required String urlPath, this.dataSourceType = DataSourceTypes.api})
      : path = urlPath,
        supabaseClient = null;

  const ThemeConfiguration.firestore({required String collectionName, this.dataSourceType = DataSourceTypes.firestore})
      : path = collectionName,
        supabaseClient = null;

  const ThemeConfiguration.secure({this.dataSourceType = DataSourceTypes.secure})
      : path = null,
        supabaseClient = null;
}

/// [ThemeDataRepository] is a class that defines the basic CRUD operations for the [ThemeModel] entity.
class ThemeDataRepository {
  final ThemeConfiguration baseThemeConfiguration;
  final ThemeConfiguration? componentThemesConfiguration;

  /// [ThemeDataRepository] constructor.
  ThemeDataRepository({required this.baseThemeConfiguration, this.componentThemesConfiguration});

  /// [dataSource] is the [ThemeDataSource] that will be used to fetch the data.
  ThemeDataSource<BaseThemeModel> get dataSource => _dataSourceByType<BaseThemeModel>(
        'baseThemes',
        baseThemeConfiguration,
        convertDataTypeFromMap: BaseThemeModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  ThemeDataSource<ComponentThemesModel?>? get componentThemesDataSource {
    if (componentThemesConfiguration != null) {
      return _dataSourceByType<ComponentThemesModel>(
        'componentsThemes',
        componentThemesConfiguration!,
        convertDataTypeFromMap: ComponentThemesModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );
    }
    return null;
  }

  /// [_dataSourceByType] returns the appropriate [ThemeDataSource] based on the [DataSourceTypes] enum.
  /// Defaults to [AssetsThemeDataSource] if no type is provided.
  /// This can be in local, an api, or firestore.
  ThemeDataSource<T> _dataSourceByType<T>(
    String tableName,
    ThemeConfiguration type, {
    required T Function(Map<String, dynamic>) convertDataTypeFromMap,
    required Map<String, dynamic> Function(T) convertDataTypeToMap,
  }) {
    switch (type.dataSourceType) {
      // case DataSourceTypes.api:
      //   return ApiThemeDataSource();
      case DataSourceTypes.firestore:
        return FirestoreThemeDataSource<T>(
          type.path!,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      case DataSourceTypes.assets:
        return AssetsThemeDataSource(
          rootBundleKey: type.path!,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      case DataSourceTypes.supabase:
        return SupabaseThemeDataSource<T>(
          tableName,
          client: type.supabaseClient,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );

      //TODO: set default accordingly
      default:
        return AssetsThemeDataSource(
          rootBundleKey: type.path!,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
    }
  }
}
