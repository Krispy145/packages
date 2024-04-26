import 'package:theme/data/models/theme/theme.dart';
import 'package:theme/data/repositories/theme.repository.dart';

import '/data/repositories/_repositories.dart';
import 'base.repository.dart';

/// [ThemeRepository] is an abstract class that defines the basic CRUD operations for the `ThemeModel` entity.
class ThemeRepository extends BaseThemeRepository {
  final ThemeConfiguration? baseThemeConfiguration;
  final ThemeConfiguration? componentThemesConfiguration;

  /// [ThemeRepository] constructor.
  ThemeRepository({this.baseThemeConfiguration, this.componentThemesConfiguration});

  ThemeDataRepository get _themeDataRepository => DataRepositories.instance.theme(
        baseThemeConfiguration: baseThemeConfiguration,
        componentThemesConfiguration: componentThemesConfiguration,
      );

  /// [fetchTheme] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<BaseThemeModel?>? fetchTheme({required String id}) {
    return _themeDataRepository.dataSource?.get(id);
  }

  @override
  Future<void>? addTheme(BaseThemeModel theme) {
    return _themeDataRepository.dataSource?.add(theme);
  }

  @override
  Future<void>? deleteTheme(String id) {
    return _themeDataRepository.dataSource?.delete(id);
  }

  @override
  Future<void>? updateTheme(BaseThemeModel theme) {
    return ThemeDataRepository(
      baseThemeConfiguration: const ThemeConfiguration.firestore(collectionName: 'baseThemes'),
    ).dataSource?.update(theme.id, theme);
    // return _themeDataRepository.dataSource?.update(theme.id, theme);
  }

  @override
  Future<void>? addComponentTheme(ComponentThemesModel theme) {
    return _themeDataRepository.componentThemesDataSource?.add(theme);
  }

  @override
  Future<void>? deleteComponentTheme(String id) {
    return _themeDataRepository.componentThemesDataSource?.delete(id);
  }

  @override
  Future<void>? updateComponentTheme(ComponentThemesModel theme) {
    return ThemeDataRepository(
      componentThemesConfiguration: const ThemeConfiguration.firestore(collectionName: 'componentsThemes'),
    ).componentThemesDataSource?.update(theme.id, theme);
    // return _themeDataRepository.componentThemesDataSource?.update(theme.id, theme);
  }

  /// [fetchComponentsTheme] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<ComponentThemesModel?>? fetchComponentsTheme({required String id}) async {
    final theme = await _themeDataRepository.componentThemesDataSource?.get(id);
    return theme ?? ComponentThemesModel(id: id);
  }

  /// [fetchThemes] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<List<BaseThemeModel?>> fetchThemes() async {
    final baseThemes = await _themeDataRepository.dataSource?.getAll();
    return baseThemes ?? [];
  }

  /// [fetchComponentThemes] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<List<ComponentThemesModel?>> fetchComponentThemes() async {
    return (await _themeDataRepository.componentThemesDataSource?.getAll()) ?? [];
  }
}
