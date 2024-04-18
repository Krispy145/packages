import 'package:theme/data/models/theme/theme.dart';

abstract class BaseThemeRepository {
  /// [fetchTheme] is the method that will be used to fetch the data.
  Future<BaseThemeModel?>? fetchTheme({required String id});

  /// [fetchThemes] is the method that will be used to fetch the data.
  Future<List<BaseThemeModel?>?> fetchThemes();

  /// [fetchComponentsTheme] is the method that will be used to fetch the data.
  Future<ComponentThemesModel?>? fetchComponentsTheme({required String id});

  /// [fetchComponentThemes] is the method that will be used to fetch the data.
  Future<List<ComponentThemesModel?>?> fetchComponentThemes();
}
