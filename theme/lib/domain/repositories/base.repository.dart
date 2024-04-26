import "package:theme/data/models/theme/theme.dart";

abstract class BaseThemeRepository {
  /// [fetchTheme] is the method that will be used to fetch the data.
  Future<BaseThemeModel?>? fetchTheme({required String id});

  /// [addTheme] is the method that will be used to add the data.
  Future<void>? addTheme(BaseThemeModel theme);

  /// [deleteTheme] is the method that will be used to delete the data.
  Future<void>? deleteTheme(String id);

  /// [updateTheme] is the method that will be used to update the data.
  Future<void>? updateTheme(BaseThemeModel theme);

  /// [addComponentTheme] is the method that will be used to add the data.
  Future<void>? addComponentTheme(ComponentThemesModel theme);

  /// [deleteComponentTheme] is the method that will be used to delete the data.
  Future<void>? deleteComponentTheme(String id);

  /// [updateComponentTheme] is the method that will be used to update the data.
  Future<void>? updateComponentTheme(ComponentThemesModel theme);

  /// [fetchThemes] is the method that will be used to fetch the data.
  Future<List<BaseThemeModel?>?>? fetchThemes();

  /// [fetchComponentsTheme] is the method that will be used to fetch the data.
  Future<ComponentThemesModel?>? fetchComponentsTheme({required String id});

  /// [fetchComponentThemes] is the method that will be used to fetch the data.
  Future<List<ComponentThemesModel?>?> fetchComponentThemes();
}
