import "package:theme/data/models/theme/theme.dart";
import "package:theme/data/repositories/theme_configuration.dart";
import "package:theme/data/sources/theme/_source.dart";
import "package:theme/data/sources/theme/assets.source.dart";
import "package:theme/data/sources/theme/firestore.source.dart";
import "package:theme/data/sources/theme/supabase.source.dart";

import "/data/repositories/_repositories.dart";

/// [ThemeDataRepository] is a class that defines the basic CRUD operations for the ThemeModel entity.
class ThemeDataRepository {
  final ThemeConfiguration? baseThemeConfiguration;
  final ThemeConfiguration? componentThemesConfiguration;

  /// [ThemeDataRepository] constructor.
  ThemeDataRepository({
    this.baseThemeConfiguration,
    this.componentThemesConfiguration,
  });

  /// [dataSource] is the [ThemeDataSource] that will be used to fetch the data.
  ThemeDataSource<BaseThemeModel>? get dataSource => baseThemeConfiguration != null
      ? _dataSourceByType<BaseThemeModel>(
          "baseThemes",
          baseThemeConfiguration!,
          convertDataTypeFromMap: BaseThemeModel.fromJson,
          convertDataTypeToMap: (model) => model.toJson(),
        )
      : null;

  ThemeDataSource<ComponentThemesModel>? get componentThemesDataSource => componentThemesConfiguration != null
      ? _dataSourceByType<ComponentThemesModel>(
          "componentsThemes",
          componentThemesConfiguration!,
          convertDataTypeFromMap: ComponentThemesModel.fromJson,
          convertDataTypeToMap: (model) => model.toJson(),
        )
      : null;

  /// [_dataSourceByType] returns the appropriate [ThemeDataSource] based on the [ThemeDataSourceType] enum.
  /// Defaults to [AssetsThemeDataSource] if no type is provided.
  /// This can be in local, an api, or firestore.
  ThemeDataSource<T> _dataSourceByType<T>(
    String tableName,
    ThemeConfiguration type, {
    required T Function(Map<String, dynamic>) convertDataTypeFromMap,
    required Map<String, dynamic> Function(T) convertDataTypeToMap,
  }) {
    switch (type.dataSourceType) {
      case ThemeDataSourceType.firestore:
        return FirestoreThemeDataSource<T>(
          type.path!,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      case ThemeDataSourceType.assets:
        return AssetsThemeDataSource(
          rootBundleKey: type.path!,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      case ThemeDataSourceType.supabase:
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
