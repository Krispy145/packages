import "package:theme/data/models/appbars/appbar_model.dart";
import "package:theme/data/models/appbars/bottom_appbar_model.dart";
import "package:theme/data/models/badges/badge_model.dart";
import "package:theme/data/models/box_decorations/box_decoration_model.dart";
import "package:theme/data/models/buttons/button_model.dart";
import "package:theme/data/models/buttons/floating_action_button_model.dart";
import "package:theme/data/models/buttons/toggle_button_model.dart";
import "package:theme/data/models/cards/card_model.dart";
import "package:theme/data/models/checkboxes/checkbox_model.dart";
import "package:theme/data/models/chips/chip_model.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:theme/data/models/dialogs/dialog_model.dart";
import "package:theme/data/models/drawers/drawer_model.dart";
import "package:theme/data/models/dropdowns/dropdown_model.dart";
import "package:theme/data/models/input_decorations/input_decoration_model.dart";
import "package:theme/data/models/list_tiles/list_tile_model.dart";
import "package:theme/data/models/menu_bars/menu_bar_model.dart";
import "package:theme/data/models/menus/menu_style_model.dart";
import "package:theme/data/models/navigation_bars/navigation_bar_model.dart";
import "package:theme/data/models/navigation_drawers/navigation_drawer_model.dart";
import "package:theme/data/models/navigation_rails/navigation_rail_model.dart";
import "package:theme/data/models/popup_menus/popup_menu_model.dart";
import "package:theme/data/models/progress_indicators/progress_indicator_model.dart";
import "package:theme/data/models/radios/radio_model.dart";
import "package:theme/data/models/scrollbars/scrollbar_model.dart";
import "package:theme/data/models/search_bars/search_bar_model.dart";
import "package:theme/data/models/search_views/search_view_model.dart";
import "package:theme/data/models/sliders/slider_model.dart";
import "package:theme/data/models/snackbars/snackbar_model.dart";
import "package:theme/data/models/switches/switch_model.dart";
import "package:theme/data/models/tab_bars/tab_bar_model.dart";
import "package:theme/data/models/text/text_style_model.dart";
import "package:theme/data/models/theme/theme.dart";
import "package:theme/data/models/tooltips/tooltip_model.dart";
import "package:theme/data/sources/theme/_source.dart";

import "/data/repositories/_repositories.dart";
import "/data/sources/digital_oasis/_source.dart";
import "/data/sources/digital_oasis/supabase.source.dart";

/// [DODataRepository] is a class that defines the basic CRUD operations for the model entity.
class DODataRepository {
  /// [baseThemesDataSource] is the [ThemeDataSource] that will be used to fetch the data.
  DODataSource<BaseThemeModel> get baseThemesDataSource =>
      _dataSourceByType<BaseThemeModel>(
        "baseThemes",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: BaseThemeModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<ColorModel> get colorsDataSource =>
      _dataSourceByType<ColorModel>(
        "colors",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ColorModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<TextStyleModel> get textStylesDataSource =>
      _dataSourceByType<TextStyleModel>(
        "textStyles",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: TextStyleModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<ComponentThemesModel?> get componentsThemesDataSource =>
      _dataSourceByType<ComponentThemesModel>(
        "componentsThemes",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ComponentThemesModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<ButtonModel?> get buttonsDataSource =>
      _dataSourceByType<ButtonModel>(
        "buttons",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ButtonModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<FloatingActionButtonModel?>
      get floatingActionButtonsDataSource =>
          _dataSourceByType<FloatingActionButtonModel>(
            "floatingActionButtons",
            DataSourceTypes.supabase,
            convertDataTypeFromMap: FloatingActionButtonModel.fromJson,
            convertDataTypeToMap: (model) => model.toJson(),
          );

  DODataSource<ToggleButtonModel?> get toggleButtonsDataSource =>
      _dataSourceByType<ToggleButtonModel>(
        "toggleButtons",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ToggleButtonModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<InputDecorationModel?> get inputDecorationsDataSource =>
      _dataSourceByType<InputDecorationModel>(
        "inputDecorations",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: InputDecorationModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<BoxDecorationModel?> get boxDecorationsDataSource =>
      _dataSourceByType<BoxDecorationModel>(
        "boxDecorations",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: BoxDecorationModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<CardModel?> get cardsDataSource => _dataSourceByType<CardModel>(
        "cards",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: CardModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<SnackbarModel?> get snackbarsDataSource =>
      _dataSourceByType<SnackbarModel>(
        "snackbars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: SnackbarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<BadgeModel?> get badgesDataSource =>
      _dataSourceByType<BadgeModel>(
        "badges",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: BadgeModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<AppbarModel?> get appbarsDataSource =>
      _dataSourceByType<AppbarModel>(
        "appbars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: AppbarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<BottomAppbarModel?> get bottomAppbarsDataSource =>
      _dataSourceByType<BottomAppbarModel>(
        "bottomAppbars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: BottomAppbarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<DropdownModel?> get dropdownsDataSource =>
      _dataSourceByType<DropdownModel>(
        "dropdowns",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: DropdownModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<ChipModel?> get chipsDataSource => _dataSourceByType<ChipModel>(
        "chips",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ChipModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<DialogModel?> get dialogsDataSource =>
      _dataSourceByType<DialogModel>(
        "dialogs",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: DialogModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<PopupMenuModel?> get popupMenusDataSource =>
      _dataSourceByType<PopupMenuModel>(
        "popupMenus",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: PopupMenuModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<SliderModel?> get slidersDataSource =>
      _dataSourceByType<SliderModel>(
        "sliders",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: SliderModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<ScrollbarModel?> get scrollbarsDataSource =>
      _dataSourceByType<ScrollbarModel>(
        "scrollbars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ScrollbarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<TooltipModel?> get tooltipsDataSource =>
      _dataSourceByType<TooltipModel>(
        "tooltips",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: TooltipModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<NavigationRailModel?> get navigationRailsDataSource =>
      _dataSourceByType<NavigationRailModel>(
        "navigationRails",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: NavigationRailModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<CheckboxModel?> get checkboxesDataSource =>
      _dataSourceByType<CheckboxModel>(
        "checkboxes",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: CheckboxModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<RadioModel?> get radiosDataSource =>
      _dataSourceByType<RadioModel>(
        "radios",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: RadioModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<SwitchModel?> get switchesDataSource =>
      _dataSourceByType<SwitchModel>(
        "switches",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: SwitchModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<DrawerModel?> get drawersDataSource =>
      _dataSourceByType<DrawerModel>(
        "drawers",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: DrawerModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<ListTileModel?> get listTilesDataSource =>
      _dataSourceByType<ListTileModel>(
        "listTiles",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ListTileModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<MenuStyleModel?> get menuStylesDataSource =>
      _dataSourceByType<MenuStyleModel>(
        "menuStyles",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: MenuStyleModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<MenuBarModel?> get menuBarsDataSource =>
      _dataSourceByType<MenuBarModel>(
        "menuBars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: MenuBarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<NavigationBarModel?> get navigationBarsDataSource =>
      _dataSourceByType<NavigationBarModel>(
        "navigationBars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: NavigationBarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<NavigationDrawerModel?> get navigationDrawersDataSource =>
      _dataSourceByType<NavigationDrawerModel>(
        "navigationDrawers",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: NavigationDrawerModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<ProgressIndicatorModel?> get progressIndicatorsDataSource =>
      _dataSourceByType<ProgressIndicatorModel>(
        "progressIndicators",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: ProgressIndicatorModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<SearchBarModel?> get searchBarsDataSource =>
      _dataSourceByType<SearchBarModel>(
        "searchBars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: SearchBarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<SearchViewModel?> get searchViewsDataSource =>
      _dataSourceByType<SearchViewModel>(
        "searchViews",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: SearchViewModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  DODataSource<TabBarModel?> get tabBarStylesDataSource =>
      _dataSourceByType<TabBarModel>(
        "tabBars",
        DataSourceTypes.supabase,
        convertDataTypeFromMap: TabBarModel.fromJson,
        convertDataTypeToMap: (model) => model.toJson(),
      );

  /// [_dataSourceByType] returns the appropriate [DODataSource] based on the [DataSourceTypes] enum.
  /// Defaults to [SupabaseDODataSource].
  /// This can be in local, an api, or firestore.
  DODataSource<T> _dataSourceByType<T>(
    String tableName,
    DataSourceTypes type, {
    required T Function(Map<String, dynamic>) convertDataTypeFromMap,
    required Map<String, dynamic> Function(T) convertDataTypeToMap,
  }) {
    switch (type) {
      // case DataSourceTypes.api:
      //   return ApiDODataSource();
      // case DataSourceTypes.local:
      //   return HiveDODataSource();
      // case DataSourceTypes.firestore:
      //   return FirestoreDODataSource(
      //     tableName,
      //     convertDataTypeFromMap: convertDataTypeFromMap,
      //     convertDataTypeToMap: convertDataTypeToMap,
      //   );
      case DataSourceTypes.supabase:
        return SupabaseDODataSource<T>(
          tableName,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      default:
        return SupabaseDODataSource<T>(
          tableName,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
    }
  }
}
