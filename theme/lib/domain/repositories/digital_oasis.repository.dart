import 'package:theme/data/models/buttons/button_style_model.dart';
import 'package:theme/data/models/buttons/floating_action_button_model.dart';
import 'package:theme/data/models/buttons/toggle_button_model.dart';
import 'package:theme/data/models/colors/color_model.dart';
import 'package:theme/data/models/text/text_style_model.dart';
import 'package:theme/data/models/theme/theme.dart';
import 'package:theme/data/sources/digital_oasis/_source.dart';

import '/data/repositories/_repositories.dart';
import 'base.repository.dart';

/// [DigitalOasisRepository] is an abstract class that defines the basic CRUD operations for the [DigitalOasisModel] entity.
class DigitalOasisRepository extends BaseThemeRepository {
  final DigitalOasisDataSource<BaseThemeModel> baseThemeDataSource = DataRepositories.instance.digitalOasis.baseThemesDataSource;
  final DigitalOasisDataSource<ComponentThemesModel?> componentsThemesDataSource = DataRepositories.instance.digitalOasis.componentsThemesDataSource;
  final DigitalOasisDataSource<ColorModel> colorsDataSource = DataRepositories.instance.digitalOasis.colorsDataSource;
  final DigitalOasisDataSource<TextStyleModel> textStylesDataSource = DataRepositories.instance.digitalOasis.textStylesDataSource;
  final DigitalOasisDataSource<ButtonStyleModel?> buttonsDataSource = DataRepositories.instance.digitalOasis.buttonsDataSource;
  final DigitalOasisDataSource<FloatingActionButtonModel?> floatingActionButtonsDataSource = DataRepositories.instance.digitalOasis.floatingActionButtonsDataSource;
  final DigitalOasisDataSource<ToggleButtonModel?> toggleButtonsDataSource = DataRepositories.instance.digitalOasis.toggleButtonsDataSource;
  final DigitalOasisDataSource inputDecorationsDataSource = DataRepositories.instance.digitalOasis.inputDecorationsDataSource;
  final DigitalOasisDataSource boxDecorationsDataSource = DataRepositories.instance.digitalOasis.boxDecorationsDataSource;
  final DigitalOasisDataSource cardsDataSource = DataRepositories.instance.digitalOasis.cardsDataSource;
  final DigitalOasisDataSource snackbarsDataSource = DataRepositories.instance.digitalOasis.snackbarsDataSource;
  final DigitalOasisDataSource badgesDataSource = DataRepositories.instance.digitalOasis.badgesDataSource;
  final DigitalOasisDataSource appbarsDataSource = DataRepositories.instance.digitalOasis.appbarsDataSource;
  final DigitalOasisDataSource bottomAppbarsDataSource = DataRepositories.instance.digitalOasis.bottomAppbarsDataSource;
  final DigitalOasisDataSource dropdownsDataSource = DataRepositories.instance.digitalOasis.dropdownsDataSource;
  final DigitalOasisDataSource chipsDataSource = DataRepositories.instance.digitalOasis.chipsDataSource;
  final DigitalOasisDataSource dialogsDataSource = DataRepositories.instance.digitalOasis.dialogsDataSource;
  final DigitalOasisDataSource popupMenusDataSource = DataRepositories.instance.digitalOasis.popupMenusDataSource;
  final DigitalOasisDataSource slidersDataSource = DataRepositories.instance.digitalOasis.slidersDataSource;
  final DigitalOasisDataSource scrollbarsDataSource = DataRepositories.instance.digitalOasis.scrollbarsDataSource;
  final DigitalOasisDataSource tooltipsDataSource = DataRepositories.instance.digitalOasis.tooltipsDataSource;
  final DigitalOasisDataSource navigationRailsDataSource = DataRepositories.instance.digitalOasis.navigationRailsDataSource;
  final DigitalOasisDataSource checkboxesDataSource = DataRepositories.instance.digitalOasis.checkboxesDataSource;
  final DigitalOasisDataSource radiosDataSource = DataRepositories.instance.digitalOasis.radiosDataSource;
  final DigitalOasisDataSource switchesDataSource = DataRepositories.instance.digitalOasis.switchesDataSource;
  final DigitalOasisDataSource drawersDataSource = DataRepositories.instance.digitalOasis.drawersDataSource;
  final DigitalOasisDataSource listTilesDataSource = DataRepositories.instance.digitalOasis.listTilesDataSource;
  final DigitalOasisDataSource menuStylesDataSource = DataRepositories.instance.digitalOasis.menuStylesDataSource;
  final DigitalOasisDataSource menuBarsDataSource = DataRepositories.instance.digitalOasis.menuBarsDataSource;
  final DigitalOasisDataSource navigationBarsDataSource = DataRepositories.instance.digitalOasis.navigationBarsDataSource;
  final DigitalOasisDataSource navigationDrawersDataSource = DataRepositories.instance.digitalOasis.navigationDrawersDataSource;
  final DigitalOasisDataSource progressIndicatorsDataSource = DataRepositories.instance.digitalOasis.progressIndicatorsDataSource;
  final DigitalOasisDataSource searchBarsDataSource = DataRepositories.instance.digitalOasis.searchBarsDataSource;
  final DigitalOasisDataSource searchViewsDataSource = DataRepositories.instance.digitalOasis.searchViewsDataSource;
  final DigitalOasisDataSource tabBarStylesDataSource = DataRepositories.instance.digitalOasis.tabBarStylesDataSource;

  /// [DigitalOasisRepository] constructor.
  DigitalOasisRepository();

  /// [fetchTheme] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<BaseThemeModel> fetchTheme({required String id}) async {
    final result = await baseThemeDataSource.get(id);
    return result!;
  }

  /// [fetchComponentsTheme] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<ComponentThemesModel?> fetchComponentsTheme({required String id}) {
    return componentsThemesDataSource.get(id);
  }

  /// [fetchThemes] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<List<BaseThemeModel?>> fetchThemes() {
    return baseThemeDataSource.getAll();
  }

  /// [fetchComponentThemes] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<List<ComponentThemesModel?>> fetchComponentThemes() {
    return componentsThemesDataSource.getAll();
  }
}
