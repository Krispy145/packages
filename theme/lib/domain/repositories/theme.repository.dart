import 'package:theme/data/models/theme/theme.dart';
import 'package:theme/data/repositories/theme.repository.dart';
import 'package:theme/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

import '/data/repositories/_repositories.dart';
import 'base.repository.dart';

/// [ThemeRepository] is an abstract class that defines the basic CRUD operations for the [ThemeModel] entity.
class ThemeRepository extends BaseThemeRepository {
  final ThemeConfiguration baseThemeConfiguration;
  final ThemeConfiguration? componentThemesConfiguration;

  /// [ThemeRepository] constructor.
  ThemeRepository({required this.baseThemeConfiguration, required this.componentThemesConfiguration});

  ThemeDataRepository get _themeDataRepository => DataRepositories.instance.theme(
        baseThemeConfiguration: baseThemeConfiguration,
        componentThemesConfiguration: componentThemesConfiguration,
      );

  /// [fetchTheme] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<BaseThemeModel> fetchTheme({required String id}) async {
    AppLogger.print("Fetching theme with id: $id", [ThemeLoggers.theme]);
    final result = await _themeDataRepository.dataSource.get(id);
    return result!;
  }

  /// [fetchComponentsTheme] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<ComponentThemesModel?> fetchComponentsTheme({required String id}) {
    return _themeDataRepository.componentThemesDataSource?.get(id) ?? Future.value();
  }

  /// [fetchThemes] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<List<BaseThemeModel?>> fetchThemes() {
    return _themeDataRepository.dataSource.getAll();
  }

  /// [fetchComponentThemes] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<List<ComponentThemesModel?>> fetchComponentThemes() {
    return _themeDataRepository.componentThemesDataSource?.getAll() ?? Future.value([]);
  }
}
