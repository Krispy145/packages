// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'theme_model.dart';

class ThemeModelMapper extends ClassMapperBase<ThemeModel> {
  ThemeModelMapper._();

  static ThemeModelMapper? _instance;
  static ThemeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThemeModelMapper._());
      ButtonModelMapper.ensureInitialized();
      ToggleButtonModelMapper.ensureInitialized();
      FloatingActionButtonModelMapper.ensureInitialized();
      InputDecorationModelMapper.ensureInitialized();
      BoxDecorationModelMapper.ensureInitialized();
      CardModelMapper.ensureInitialized();
      SnackbarModelMapper.ensureInitialized();
      BadgeModelMapper.ensureInitialized();
      AppbarModelMapper.ensureInitialized();
      BottomAppbarModelMapper.ensureInitialized();
      DropdownModelMapper.ensureInitialized();
      ChipModelMapper.ensureInitialized();
      DialogModelMapper.ensureInitialized();
      PopupMenuModelMapper.ensureInitialized();
      SliderModelMapper.ensureInitialized();
      ScrollbarModelMapper.ensureInitialized();
      TooltipModelMapper.ensureInitialized();
      NavigationRailModelMapper.ensureInitialized();
      CheckboxModelMapper.ensureInitialized();
      RadioModelMapper.ensureInitialized();
      SwitchModelMapper.ensureInitialized();
      DrawerModelMapper.ensureInitialized();
      ListTileModelMapper.ensureInitialized();
      MenuStyleModelMapper.ensureInitialized();
      MenuBarModelMapper.ensureInitialized();
      NavigationBarModelMapper.ensureInitialized();
      NavigationDrawerModelMapper.ensureInitialized();
      ProgressIndicatorModelMapper.ensureInitialized();
      SearchBarModelMapper.ensureInitialized();
      SearchViewModelMapper.ensureInitialized();
      TabBarModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ThemeModel';

  static String _$id(ThemeModel v) => v.id;
  static const Field<ThemeModel, String> _f$id = Field('id', _$id);
  static String? _$name(ThemeModel v) => v.name;
  static const Field<ThemeModel, String> _f$name =
      Field('name', _$name, opt: true);
  static Map<String, ButtonModel>? _$elevatedButtons(ThemeModel v) =>
      v.elevatedButtons;
  static const Field<ThemeModel, Map<String, ButtonModel>> _f$elevatedButtons =
      Field('elevatedButtons', _$elevatedButtons,
          key: 'elevated_buttons', opt: true);
  static Map<String, ButtonModel>? _$filledButtons(ThemeModel v) =>
      v.filledButtons;
  static const Field<ThemeModel, Map<String, ButtonModel>> _f$filledButtons =
      Field('filledButtons', _$filledButtons, key: 'filled_buttons', opt: true);
  static Map<String, ButtonModel>? _$outlinedButtons(ThemeModel v) =>
      v.outlinedButtons;
  static const Field<ThemeModel, Map<String, ButtonModel>> _f$outlinedButtons =
      Field('outlinedButtons', _$outlinedButtons,
          key: 'outlined_buttons', opt: true);
  static Map<String, ButtonModel>? _$textButtons(ThemeModel v) => v.textButtons;
  static const Field<ThemeModel, Map<String, ButtonModel>> _f$textButtons =
      Field('textButtons', _$textButtons, key: 'text_buttons', opt: true);
  static Map<String, ToggleButtonModel>? _$toggleButtons(ThemeModel v) =>
      v.toggleButtons;
  static const Field<ThemeModel, Map<String, ToggleButtonModel>>
      _f$toggleButtons =
      Field('toggleButtons', _$toggleButtons, key: 'toggle_buttons', opt: true);
  static Map<String, ButtonModel>? _$iconButtons(ThemeModel v) => v.iconButtons;
  static const Field<ThemeModel, Map<String, ButtonModel>> _f$iconButtons =
      Field('iconButtons', _$iconButtons, key: 'icon_buttons', opt: true);
  static Map<String, FloatingActionButtonModel>? _$floatingActionButtons(
          ThemeModel v) =>
      v.floatingActionButtons;
  static const Field<ThemeModel, Map<String, FloatingActionButtonModel>>
      _f$floatingActionButtons = Field(
          'floatingActionButtons', _$floatingActionButtons,
          key: 'floating_action_buttons', opt: true);
  static Map<String, ButtonModel>? _$menuButtons(ThemeModel v) => v.menuButtons;
  static const Field<ThemeModel, Map<String, ButtonModel>> _f$menuButtons =
      Field('menuButtons', _$menuButtons, key: 'menu_buttons', opt: true);
  static Map<String, ButtonModel>? _$segmentedButtons(ThemeModel v) =>
      v.segmentedButtons;
  static const Field<ThemeModel, Map<String, ButtonModel>> _f$segmentedButtons =
      Field('segmentedButtons', _$segmentedButtons,
          key: 'segmented_buttons', opt: true);
  static Map<String, InputDecorationModel>? _$inputDecorations(ThemeModel v) =>
      v.inputDecorations;
  static const Field<ThemeModel, Map<String, InputDecorationModel>>
      _f$inputDecorations = Field('inputDecorations', _$inputDecorations,
          key: 'input_decorations', opt: true);
  static Map<String, BoxDecorationModel>? _$boxDecorations(ThemeModel v) =>
      v.boxDecorations;
  static const Field<ThemeModel, Map<String, BoxDecorationModel>>
      _f$boxDecorations = Field('boxDecorations', _$boxDecorations,
          key: 'box_decorations', opt: true);
  static Map<String, CardModel>? _$cards(ThemeModel v) => v.cards;
  static const Field<ThemeModel, Map<String, CardModel>> _f$cards =
      Field('cards', _$cards, opt: true);
  static Map<String, SnackbarModel>? _$snackbars(ThemeModel v) => v.snackbars;
  static const Field<ThemeModel, Map<String, SnackbarModel>> _f$snackbars =
      Field('snackbars', _$snackbars, opt: true);
  static Map<String, BadgeModel>? _$badges(ThemeModel v) => v.badges;
  static const Field<ThemeModel, Map<String, BadgeModel>> _f$badges =
      Field('badges', _$badges, opt: true);
  static Map<String, AppbarModel>? _$appbars(ThemeModel v) => v.appbars;
  static const Field<ThemeModel, Map<String, AppbarModel>> _f$appbars =
      Field('appbars', _$appbars, opt: true);
  static Map<String, BottomAppbarModel>? _$bottomAppbars(ThemeModel v) =>
      v.bottomAppbars;
  static const Field<ThemeModel, Map<String, BottomAppbarModel>>
      _f$bottomAppbars =
      Field('bottomAppbars', _$bottomAppbars, key: 'bottom_appbars', opt: true);
  static Map<String, DropdownModel>? _$dropdowns(ThemeModel v) => v.dropdowns;
  static const Field<ThemeModel, Map<String, DropdownModel>> _f$dropdowns =
      Field('dropdowns', _$dropdowns, opt: true);
  static Map<String, ChipModel>? _$chips(ThemeModel v) => v.chips;
  static const Field<ThemeModel, Map<String, ChipModel>> _f$chips =
      Field('chips', _$chips, opt: true);
  static Map<String, DialogModel>? _$dialogs(ThemeModel v) => v.dialogs;
  static const Field<ThemeModel, Map<String, DialogModel>> _f$dialogs =
      Field('dialogs', _$dialogs, opt: true);
  static Map<String, PopupMenuModel>? _$popupMenus(ThemeModel v) =>
      v.popupMenus;
  static const Field<ThemeModel, Map<String, PopupMenuModel>> _f$popupMenus =
      Field('popupMenus', _$popupMenus, key: 'popup_menus', opt: true);
  static Map<String, SliderModel>? _$sliders(ThemeModel v) => v.sliders;
  static const Field<ThemeModel, Map<String, SliderModel>> _f$sliders =
      Field('sliders', _$sliders, opt: true);
  static Map<String, ScrollbarModel>? _$scrollbars(ThemeModel v) =>
      v.scrollbars;
  static const Field<ThemeModel, Map<String, ScrollbarModel>> _f$scrollbars =
      Field('scrollbars', _$scrollbars, opt: true);
  static Map<String, TooltipModel>? _$tooltips(ThemeModel v) => v.tooltips;
  static const Field<ThemeModel, Map<String, TooltipModel>> _f$tooltips =
      Field('tooltips', _$tooltips, opt: true);
  static Map<String, NavigationRailModel>? _$navigationRails(ThemeModel v) =>
      v.navigationRails;
  static const Field<ThemeModel, Map<String, NavigationRailModel>>
      _f$navigationRails = Field('navigationRails', _$navigationRails,
          key: 'navigation_rails', opt: true);
  static Map<String, CheckboxModel>? _$checkboxes(ThemeModel v) => v.checkboxes;
  static const Field<ThemeModel, Map<String, CheckboxModel>> _f$checkboxes =
      Field('checkboxes', _$checkboxes, opt: true);
  static Map<String, RadioModel>? _$radios(ThemeModel v) => v.radios;
  static const Field<ThemeModel, Map<String, RadioModel>> _f$radios =
      Field('radios', _$radios, opt: true);
  static Map<String, SwitchModel>? _$switches(ThemeModel v) => v.switches;
  static const Field<ThemeModel, Map<String, SwitchModel>> _f$switches =
      Field('switches', _$switches, opt: true);
  static Map<String, DrawerModel>? _$drawers(ThemeModel v) => v.drawers;
  static const Field<ThemeModel, Map<String, DrawerModel>> _f$drawers =
      Field('drawers', _$drawers, opt: true);
  static Map<String, ListTileModel>? _$listTiles(ThemeModel v) => v.listTiles;
  static const Field<ThemeModel, Map<String, ListTileModel>> _f$listTiles =
      Field('listTiles', _$listTiles, key: 'list_tiles', opt: true);
  static Map<String, MenuStyleModel>? _$menus(ThemeModel v) => v.menus;
  static const Field<ThemeModel, Map<String, MenuStyleModel>> _f$menus =
      Field('menus', _$menus, opt: true);
  static Map<String, MenuBarModel>? _$menuBars(ThemeModel v) => v.menuBars;
  static const Field<ThemeModel, Map<String, MenuBarModel>> _f$menuBars =
      Field('menuBars', _$menuBars, key: 'menu_bars', opt: true);
  static Map<String, NavigationBarModel>? _$navigationBars(ThemeModel v) =>
      v.navigationBars;
  static const Field<ThemeModel, Map<String, NavigationBarModel>>
      _f$navigationBars = Field('navigationBars', _$navigationBars,
          key: 'navigation_bars', opt: true);
  static Map<String, NavigationDrawerModel>? _$navigationDrawers(
          ThemeModel v) =>
      v.navigationDrawers;
  static const Field<ThemeModel, Map<String, NavigationDrawerModel>>
      _f$navigationDrawers = Field('navigationDrawers', _$navigationDrawers,
          key: 'navigation_drawers', opt: true);
  static Map<String, ProgressIndicatorModel>? _$progressIndicators(
          ThemeModel v) =>
      v.progressIndicators;
  static const Field<ThemeModel, Map<String, ProgressIndicatorModel>>
      _f$progressIndicators = Field('progressIndicators', _$progressIndicators,
          key: 'progress_indicators', opt: true);
  static Map<String, SearchBarModel>? _$searchBars(ThemeModel v) =>
      v.searchBars;
  static const Field<ThemeModel, Map<String, SearchBarModel>> _f$searchBars =
      Field('searchBars', _$searchBars, key: 'search_bars', opt: true);
  static Map<String, SearchViewModel>? _$searchViews(ThemeModel v) =>
      v.searchViews;
  static const Field<ThemeModel, Map<String, SearchViewModel>> _f$searchViews =
      Field('searchViews', _$searchViews, key: 'search_views', opt: true);
  static Map<String, TabBarModel>? _$tabBars(ThemeModel v) => v.tabBars;
  static const Field<ThemeModel, Map<String, TabBarModel>> _f$tabBars =
      Field('tabBars', _$tabBars, key: 'tab_bars', opt: true);

  @override
  final MappableFields<ThemeModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #elevatedButtons: _f$elevatedButtons,
    #filledButtons: _f$filledButtons,
    #outlinedButtons: _f$outlinedButtons,
    #textButtons: _f$textButtons,
    #toggleButtons: _f$toggleButtons,
    #iconButtons: _f$iconButtons,
    #floatingActionButtons: _f$floatingActionButtons,
    #menuButtons: _f$menuButtons,
    #segmentedButtons: _f$segmentedButtons,
    #inputDecorations: _f$inputDecorations,
    #boxDecorations: _f$boxDecorations,
    #cards: _f$cards,
    #snackbars: _f$snackbars,
    #badges: _f$badges,
    #appbars: _f$appbars,
    #bottomAppbars: _f$bottomAppbars,
    #dropdowns: _f$dropdowns,
    #chips: _f$chips,
    #dialogs: _f$dialogs,
    #popupMenus: _f$popupMenus,
    #sliders: _f$sliders,
    #scrollbars: _f$scrollbars,
    #tooltips: _f$tooltips,
    #navigationRails: _f$navigationRails,
    #checkboxes: _f$checkboxes,
    #radios: _f$radios,
    #switches: _f$switches,
    #drawers: _f$drawers,
    #listTiles: _f$listTiles,
    #menus: _f$menus,
    #menuBars: _f$menuBars,
    #navigationBars: _f$navigationBars,
    #navigationDrawers: _f$navigationDrawers,
    #progressIndicators: _f$progressIndicators,
    #searchBars: _f$searchBars,
    #searchViews: _f$searchViews,
    #tabBars: _f$tabBars,
  };

  static ThemeModel _instantiate(DecodingData data) {
    return ThemeModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        elevatedButtons: data.dec(_f$elevatedButtons),
        filledButtons: data.dec(_f$filledButtons),
        outlinedButtons: data.dec(_f$outlinedButtons),
        textButtons: data.dec(_f$textButtons),
        toggleButtons: data.dec(_f$toggleButtons),
        iconButtons: data.dec(_f$iconButtons),
        floatingActionButtons: data.dec(_f$floatingActionButtons),
        menuButtons: data.dec(_f$menuButtons),
        segmentedButtons: data.dec(_f$segmentedButtons),
        inputDecorations: data.dec(_f$inputDecorations),
        boxDecorations: data.dec(_f$boxDecorations),
        cards: data.dec(_f$cards),
        snackbars: data.dec(_f$snackbars),
        badges: data.dec(_f$badges),
        appbars: data.dec(_f$appbars),
        bottomAppbars: data.dec(_f$bottomAppbars),
        dropdowns: data.dec(_f$dropdowns),
        chips: data.dec(_f$chips),
        dialogs: data.dec(_f$dialogs),
        popupMenus: data.dec(_f$popupMenus),
        sliders: data.dec(_f$sliders),
        scrollbars: data.dec(_f$scrollbars),
        tooltips: data.dec(_f$tooltips),
        navigationRails: data.dec(_f$navigationRails),
        checkboxes: data.dec(_f$checkboxes),
        radios: data.dec(_f$radios),
        switches: data.dec(_f$switches),
        drawers: data.dec(_f$drawers),
        listTiles: data.dec(_f$listTiles),
        menus: data.dec(_f$menus),
        menuBars: data.dec(_f$menuBars),
        navigationBars: data.dec(_f$navigationBars),
        navigationDrawers: data.dec(_f$navigationDrawers),
        progressIndicators: data.dec(_f$progressIndicators),
        searchBars: data.dec(_f$searchBars),
        searchViews: data.dec(_f$searchViews),
        tabBars: data.dec(_f$tabBars));
  }

  @override
  final Function instantiate = _instantiate;

  static ThemeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThemeModel>(map);
  }

  static ThemeModel fromJson(String json) {
    return ensureInitialized().decodeJson<ThemeModel>(json);
  }
}

mixin ThemeModelMappable {
  String toJson() {
    return ThemeModelMapper.ensureInitialized()
        .encodeJson<ThemeModel>(this as ThemeModel);
  }

  Map<String, dynamic> toMap() {
    return ThemeModelMapper.ensureInitialized()
        .encodeMap<ThemeModel>(this as ThemeModel);
  }

  ThemeModelCopyWith<ThemeModel, ThemeModel, ThemeModel> get copyWith =>
      _ThemeModelCopyWithImpl(this as ThemeModel, $identity, $identity);
  @override
  String toString() {
    return ThemeModelMapper.ensureInitialized()
        .stringifyValue(this as ThemeModel);
  }

  @override
  bool operator ==(Object other) {
    return ThemeModelMapper.ensureInitialized()
        .equalsValue(this as ThemeModel, other);
  }

  @override
  int get hashCode {
    return ThemeModelMapper.ensureInitialized().hashValue(this as ThemeModel);
  }
}

extension ThemeModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThemeModel, $Out> {
  ThemeModelCopyWith<$R, ThemeModel, $Out> get $asThemeModel =>
      $base.as((v, t, t2) => _ThemeModelCopyWithImpl(v, t, t2));
}

abstract class ThemeModelCopyWith<$R, $In extends ThemeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get elevatedButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get filledButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get outlinedButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get textButtons;
  MapCopyWith<$R, String, ToggleButtonModel,
          ToggleButtonModelCopyWith<$R, ToggleButtonModel, ToggleButtonModel>>?
      get toggleButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get iconButtons;
  MapCopyWith<
      $R,
      String,
      FloatingActionButtonModel,
      FloatingActionButtonModelCopyWith<$R, FloatingActionButtonModel,
          FloatingActionButtonModel>>? get floatingActionButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get menuButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get segmentedButtons;
  MapCopyWith<
      $R,
      String,
      InputDecorationModel,
      InputDecorationModelCopyWith<$R, InputDecorationModel,
          InputDecorationModel>>? get inputDecorations;
  MapCopyWith<
      $R,
      String,
      BoxDecorationModel,
      BoxDecorationModelCopyWith<$R, BoxDecorationModel,
          BoxDecorationModel>>? get boxDecorations;
  MapCopyWith<$R, String, CardModel,
      CardModelCopyWith<$R, CardModel, CardModel>>? get cards;
  MapCopyWith<$R, String, SnackbarModel,
      SnackbarModelCopyWith<$R, SnackbarModel, SnackbarModel>>? get snackbars;
  MapCopyWith<$R, String, BadgeModel,
      BadgeModelCopyWith<$R, BadgeModel, BadgeModel>>? get badges;
  MapCopyWith<$R, String, AppbarModel,
      AppbarModelCopyWith<$R, AppbarModel, AppbarModel>>? get appbars;
  MapCopyWith<$R, String, BottomAppbarModel,
          BottomAppbarModelCopyWith<$R, BottomAppbarModel, BottomAppbarModel>>?
      get bottomAppbars;
  MapCopyWith<$R, String, DropdownModel,
      DropdownModelCopyWith<$R, DropdownModel, DropdownModel>>? get dropdowns;
  MapCopyWith<$R, String, ChipModel,
      ChipModelCopyWith<$R, ChipModel, ChipModel>>? get chips;
  MapCopyWith<$R, String, DialogModel,
      DialogModelCopyWith<$R, DialogModel, DialogModel>>? get dialogs;
  MapCopyWith<$R, String, PopupMenuModel,
          PopupMenuModelCopyWith<$R, PopupMenuModel, PopupMenuModel>>?
      get popupMenus;
  MapCopyWith<$R, String, SliderModel,
      SliderModelCopyWith<$R, SliderModel, SliderModel>>? get sliders;
  MapCopyWith<$R, String, ScrollbarModel,
          ScrollbarModelCopyWith<$R, ScrollbarModel, ScrollbarModel>>?
      get scrollbars;
  MapCopyWith<$R, String, TooltipModel,
      TooltipModelCopyWith<$R, TooltipModel, TooltipModel>>? get tooltips;
  MapCopyWith<
      $R,
      String,
      NavigationRailModel,
      NavigationRailModelCopyWith<$R, NavigationRailModel,
          NavigationRailModel>>? get navigationRails;
  MapCopyWith<$R, String, CheckboxModel,
      CheckboxModelCopyWith<$R, CheckboxModel, CheckboxModel>>? get checkboxes;
  MapCopyWith<$R, String, RadioModel,
      RadioModelCopyWith<$R, RadioModel, RadioModel>>? get radios;
  MapCopyWith<$R, String, SwitchModel,
      SwitchModelCopyWith<$R, SwitchModel, SwitchModel>>? get switches;
  MapCopyWith<$R, String, DrawerModel,
      DrawerModelCopyWith<$R, DrawerModel, DrawerModel>>? get drawers;
  MapCopyWith<$R, String, ListTileModel,
      ListTileModelCopyWith<$R, ListTileModel, ListTileModel>>? get listTiles;
  MapCopyWith<$R, String, MenuStyleModel,
      MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>>? get menus;
  MapCopyWith<$R, String, MenuBarModel,
      MenuBarModelCopyWith<$R, MenuBarModel, MenuBarModel>>? get menuBars;
  MapCopyWith<
      $R,
      String,
      NavigationBarModel,
      NavigationBarModelCopyWith<$R, NavigationBarModel,
          NavigationBarModel>>? get navigationBars;
  MapCopyWith<
      $R,
      String,
      NavigationDrawerModel,
      NavigationDrawerModelCopyWith<$R, NavigationDrawerModel,
          NavigationDrawerModel>>? get navigationDrawers;
  MapCopyWith<
      $R,
      String,
      ProgressIndicatorModel,
      ProgressIndicatorModelCopyWith<$R, ProgressIndicatorModel,
          ProgressIndicatorModel>>? get progressIndicators;
  MapCopyWith<$R, String, SearchBarModel,
          SearchBarModelCopyWith<$R, SearchBarModel, SearchBarModel>>?
      get searchBars;
  MapCopyWith<$R, String, SearchViewModel,
          SearchViewModelCopyWith<$R, SearchViewModel, SearchViewModel>>?
      get searchViews;
  MapCopyWith<$R, String, TabBarModel,
      TabBarModelCopyWith<$R, TabBarModel, TabBarModel>>? get tabBars;
  $R call(
      {String? id,
      String? name,
      Map<String, ButtonModel>? elevatedButtons,
      Map<String, ButtonModel>? filledButtons,
      Map<String, ButtonModel>? outlinedButtons,
      Map<String, ButtonModel>? textButtons,
      Map<String, ToggleButtonModel>? toggleButtons,
      Map<String, ButtonModel>? iconButtons,
      Map<String, FloatingActionButtonModel>? floatingActionButtons,
      Map<String, ButtonModel>? menuButtons,
      Map<String, ButtonModel>? segmentedButtons,
      Map<String, InputDecorationModel>? inputDecorations,
      Map<String, BoxDecorationModel>? boxDecorations,
      Map<String, CardModel>? cards,
      Map<String, SnackbarModel>? snackbars,
      Map<String, BadgeModel>? badges,
      Map<String, AppbarModel>? appbars,
      Map<String, BottomAppbarModel>? bottomAppbars,
      Map<String, DropdownModel>? dropdowns,
      Map<String, ChipModel>? chips,
      Map<String, DialogModel>? dialogs,
      Map<String, PopupMenuModel>? popupMenus,
      Map<String, SliderModel>? sliders,
      Map<String, ScrollbarModel>? scrollbars,
      Map<String, TooltipModel>? tooltips,
      Map<String, NavigationRailModel>? navigationRails,
      Map<String, CheckboxModel>? checkboxes,
      Map<String, RadioModel>? radios,
      Map<String, SwitchModel>? switches,
      Map<String, DrawerModel>? drawers,
      Map<String, ListTileModel>? listTiles,
      Map<String, MenuStyleModel>? menus,
      Map<String, MenuBarModel>? menuBars,
      Map<String, NavigationBarModel>? navigationBars,
      Map<String, NavigationDrawerModel>? navigationDrawers,
      Map<String, ProgressIndicatorModel>? progressIndicators,
      Map<String, SearchBarModel>? searchBars,
      Map<String, SearchViewModel>? searchViews,
      Map<String, TabBarModel>? tabBars});
  ThemeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ThemeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThemeModel, $Out>
    implements ThemeModelCopyWith<$R, ThemeModel, $Out> {
  _ThemeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThemeModel> $mapper =
      ThemeModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get elevatedButtons => $value.elevatedButtons != null
          ? MapCopyWith($value.elevatedButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(elevatedButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get filledButtons => $value.filledButtons != null
          ? MapCopyWith($value.filledButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(filledButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get outlinedButtons => $value.outlinedButtons != null
          ? MapCopyWith($value.outlinedButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(outlinedButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get textButtons => $value.textButtons != null
          ? MapCopyWith($value.textButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(textButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ToggleButtonModel,
          ToggleButtonModelCopyWith<$R, ToggleButtonModel, ToggleButtonModel>>?
      get toggleButtons => $value.toggleButtons != null
          ? MapCopyWith($value.toggleButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(toggleButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get iconButtons => $value.iconButtons != null
          ? MapCopyWith($value.iconButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(iconButtons: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      FloatingActionButtonModel,
      FloatingActionButtonModelCopyWith<$R, FloatingActionButtonModel,
          FloatingActionButtonModel>>? get floatingActionButtons =>
      $value.floatingActionButtons != null
          ? MapCopyWith(
              $value.floatingActionButtons!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(floatingActionButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get menuButtons => $value.menuButtons != null
          ? MapCopyWith($value.menuButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(menuButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get segmentedButtons => $value.segmentedButtons != null
          ? MapCopyWith($value.segmentedButtons!,
              (v, t) => v.copyWith.$chain(t), (v) => call(segmentedButtons: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      InputDecorationModel,
      InputDecorationModelCopyWith<$R, InputDecorationModel,
          InputDecorationModel>>? get inputDecorations =>
      $value.inputDecorations != null
          ? MapCopyWith($value.inputDecorations!,
              (v, t) => v.copyWith.$chain(t), (v) => call(inputDecorations: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      BoxDecorationModel,
      BoxDecorationModelCopyWith<$R, BoxDecorationModel,
          BoxDecorationModel>>? get boxDecorations =>
      $value.boxDecorations != null
          ? MapCopyWith($value.boxDecorations!, (v, t) => v.copyWith.$chain(t),
              (v) => call(boxDecorations: v))
          : null;
  @override
  MapCopyWith<$R, String, CardModel,
      CardModelCopyWith<$R, CardModel, CardModel>>? get cards => $value.cards !=
          null
      ? MapCopyWith(
          $value.cards!, (v, t) => v.copyWith.$chain(t), (v) => call(cards: v))
      : null;
  @override
  MapCopyWith<$R, String, SnackbarModel,
          SnackbarModelCopyWith<$R, SnackbarModel, SnackbarModel>>?
      get snackbars => $value.snackbars != null
          ? MapCopyWith($value.snackbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(snackbars: v))
          : null;
  @override
  MapCopyWith<$R, String, BadgeModel,
          BadgeModelCopyWith<$R, BadgeModel, BadgeModel>>?
      get badges => $value.badges != null
          ? MapCopyWith($value.badges!, (v, t) => v.copyWith.$chain(t),
              (v) => call(badges: v))
          : null;
  @override
  MapCopyWith<$R, String, AppbarModel,
          AppbarModelCopyWith<$R, AppbarModel, AppbarModel>>?
      get appbars => $value.appbars != null
          ? MapCopyWith($value.appbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(appbars: v))
          : null;
  @override
  MapCopyWith<$R, String, BottomAppbarModel,
          BottomAppbarModelCopyWith<$R, BottomAppbarModel, BottomAppbarModel>>?
      get bottomAppbars => $value.bottomAppbars != null
          ? MapCopyWith($value.bottomAppbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(bottomAppbars: v))
          : null;
  @override
  MapCopyWith<$R, String, DropdownModel,
          DropdownModelCopyWith<$R, DropdownModel, DropdownModel>>?
      get dropdowns => $value.dropdowns != null
          ? MapCopyWith($value.dropdowns!, (v, t) => v.copyWith.$chain(t),
              (v) => call(dropdowns: v))
          : null;
  @override
  MapCopyWith<$R, String, ChipModel,
      ChipModelCopyWith<$R, ChipModel, ChipModel>>? get chips => $value.chips !=
          null
      ? MapCopyWith(
          $value.chips!, (v, t) => v.copyWith.$chain(t), (v) => call(chips: v))
      : null;
  @override
  MapCopyWith<$R, String, DialogModel,
          DialogModelCopyWith<$R, DialogModel, DialogModel>>?
      get dialogs => $value.dialogs != null
          ? MapCopyWith($value.dialogs!, (v, t) => v.copyWith.$chain(t),
              (v) => call(dialogs: v))
          : null;
  @override
  MapCopyWith<$R, String, PopupMenuModel,
          PopupMenuModelCopyWith<$R, PopupMenuModel, PopupMenuModel>>?
      get popupMenus => $value.popupMenus != null
          ? MapCopyWith($value.popupMenus!, (v, t) => v.copyWith.$chain(t),
              (v) => call(popupMenus: v))
          : null;
  @override
  MapCopyWith<$R, String, SliderModel,
          SliderModelCopyWith<$R, SliderModel, SliderModel>>?
      get sliders => $value.sliders != null
          ? MapCopyWith($value.sliders!, (v, t) => v.copyWith.$chain(t),
              (v) => call(sliders: v))
          : null;
  @override
  MapCopyWith<$R, String, ScrollbarModel,
          ScrollbarModelCopyWith<$R, ScrollbarModel, ScrollbarModel>>?
      get scrollbars => $value.scrollbars != null
          ? MapCopyWith($value.scrollbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(scrollbars: v))
          : null;
  @override
  MapCopyWith<$R, String, TooltipModel,
          TooltipModelCopyWith<$R, TooltipModel, TooltipModel>>?
      get tooltips => $value.tooltips != null
          ? MapCopyWith($value.tooltips!, (v, t) => v.copyWith.$chain(t),
              (v) => call(tooltips: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      NavigationRailModel,
      NavigationRailModelCopyWith<$R, NavigationRailModel,
          NavigationRailModel>>? get navigationRails =>
      $value.navigationRails != null
          ? MapCopyWith($value.navigationRails!, (v, t) => v.copyWith.$chain(t),
              (v) => call(navigationRails: v))
          : null;
  @override
  MapCopyWith<$R, String, CheckboxModel,
          CheckboxModelCopyWith<$R, CheckboxModel, CheckboxModel>>?
      get checkboxes => $value.checkboxes != null
          ? MapCopyWith($value.checkboxes!, (v, t) => v.copyWith.$chain(t),
              (v) => call(checkboxes: v))
          : null;
  @override
  MapCopyWith<$R, String, RadioModel,
          RadioModelCopyWith<$R, RadioModel, RadioModel>>?
      get radios => $value.radios != null
          ? MapCopyWith($value.radios!, (v, t) => v.copyWith.$chain(t),
              (v) => call(radios: v))
          : null;
  @override
  MapCopyWith<$R, String, SwitchModel,
          SwitchModelCopyWith<$R, SwitchModel, SwitchModel>>?
      get switches => $value.switches != null
          ? MapCopyWith($value.switches!, (v, t) => v.copyWith.$chain(t),
              (v) => call(switches: v))
          : null;
  @override
  MapCopyWith<$R, String, DrawerModel,
          DrawerModelCopyWith<$R, DrawerModel, DrawerModel>>?
      get drawers => $value.drawers != null
          ? MapCopyWith($value.drawers!, (v, t) => v.copyWith.$chain(t),
              (v) => call(drawers: v))
          : null;
  @override
  MapCopyWith<$R, String, ListTileModel,
          ListTileModelCopyWith<$R, ListTileModel, ListTileModel>>?
      get listTiles => $value.listTiles != null
          ? MapCopyWith($value.listTiles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(listTiles: v))
          : null;
  @override
  MapCopyWith<$R, String, MenuStyleModel,
          MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>>?
      get menus => $value.menus != null
          ? MapCopyWith($value.menus!, (v, t) => v.copyWith.$chain(t),
              (v) => call(menus: v))
          : null;
  @override
  MapCopyWith<$R, String, MenuBarModel,
          MenuBarModelCopyWith<$R, MenuBarModel, MenuBarModel>>?
      get menuBars => $value.menuBars != null
          ? MapCopyWith($value.menuBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(menuBars: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      NavigationBarModel,
      NavigationBarModelCopyWith<$R, NavigationBarModel,
          NavigationBarModel>>? get navigationBars =>
      $value.navigationBars != null
          ? MapCopyWith($value.navigationBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(navigationBars: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      NavigationDrawerModel,
      NavigationDrawerModelCopyWith<$R, NavigationDrawerModel,
          NavigationDrawerModel>>? get navigationDrawers =>
      $value.navigationDrawers != null
          ? MapCopyWith($value.navigationDrawers!,
              (v, t) => v.copyWith.$chain(t), (v) => call(navigationDrawers: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      ProgressIndicatorModel,
      ProgressIndicatorModelCopyWith<$R, ProgressIndicatorModel,
          ProgressIndicatorModel>>? get progressIndicators =>
      $value.progressIndicators != null
          ? MapCopyWith(
              $value.progressIndicators!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(progressIndicators: v))
          : null;
  @override
  MapCopyWith<$R, String, SearchBarModel,
          SearchBarModelCopyWith<$R, SearchBarModel, SearchBarModel>>?
      get searchBars => $value.searchBars != null
          ? MapCopyWith($value.searchBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(searchBars: v))
          : null;
  @override
  MapCopyWith<$R, String, SearchViewModel,
          SearchViewModelCopyWith<$R, SearchViewModel, SearchViewModel>>?
      get searchViews => $value.searchViews != null
          ? MapCopyWith($value.searchViews!, (v, t) => v.copyWith.$chain(t),
              (v) => call(searchViews: v))
          : null;
  @override
  MapCopyWith<$R, String, TabBarModel,
          TabBarModelCopyWith<$R, TabBarModel, TabBarModel>>?
      get tabBars => $value.tabBars != null
          ? MapCopyWith($value.tabBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(tabBars: v))
          : null;
  @override
  $R call(
          {String? id,
          Object? name = $none,
          Object? elevatedButtons = $none,
          Object? filledButtons = $none,
          Object? outlinedButtons = $none,
          Object? textButtons = $none,
          Object? toggleButtons = $none,
          Object? iconButtons = $none,
          Object? floatingActionButtons = $none,
          Object? menuButtons = $none,
          Object? segmentedButtons = $none,
          Object? inputDecorations = $none,
          Object? boxDecorations = $none,
          Object? cards = $none,
          Object? snackbars = $none,
          Object? badges = $none,
          Object? appbars = $none,
          Object? bottomAppbars = $none,
          Object? dropdowns = $none,
          Object? chips = $none,
          Object? dialogs = $none,
          Object? popupMenus = $none,
          Object? sliders = $none,
          Object? scrollbars = $none,
          Object? tooltips = $none,
          Object? navigationRails = $none,
          Object? checkboxes = $none,
          Object? radios = $none,
          Object? switches = $none,
          Object? drawers = $none,
          Object? listTiles = $none,
          Object? menus = $none,
          Object? menuBars = $none,
          Object? navigationBars = $none,
          Object? navigationDrawers = $none,
          Object? progressIndicators = $none,
          Object? searchBars = $none,
          Object? searchViews = $none,
          Object? tabBars = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != $none) #name: name,
        if (elevatedButtons != $none) #elevatedButtons: elevatedButtons,
        if (filledButtons != $none) #filledButtons: filledButtons,
        if (outlinedButtons != $none) #outlinedButtons: outlinedButtons,
        if (textButtons != $none) #textButtons: textButtons,
        if (toggleButtons != $none) #toggleButtons: toggleButtons,
        if (iconButtons != $none) #iconButtons: iconButtons,
        if (floatingActionButtons != $none)
          #floatingActionButtons: floatingActionButtons,
        if (menuButtons != $none) #menuButtons: menuButtons,
        if (segmentedButtons != $none) #segmentedButtons: segmentedButtons,
        if (inputDecorations != $none) #inputDecorations: inputDecorations,
        if (boxDecorations != $none) #boxDecorations: boxDecorations,
        if (cards != $none) #cards: cards,
        if (snackbars != $none) #snackbars: snackbars,
        if (badges != $none) #badges: badges,
        if (appbars != $none) #appbars: appbars,
        if (bottomAppbars != $none) #bottomAppbars: bottomAppbars,
        if (dropdowns != $none) #dropdowns: dropdowns,
        if (chips != $none) #chips: chips,
        if (dialogs != $none) #dialogs: dialogs,
        if (popupMenus != $none) #popupMenus: popupMenus,
        if (sliders != $none) #sliders: sliders,
        if (scrollbars != $none) #scrollbars: scrollbars,
        if (tooltips != $none) #tooltips: tooltips,
        if (navigationRails != $none) #navigationRails: navigationRails,
        if (checkboxes != $none) #checkboxes: checkboxes,
        if (radios != $none) #radios: radios,
        if (switches != $none) #switches: switches,
        if (drawers != $none) #drawers: drawers,
        if (listTiles != $none) #listTiles: listTiles,
        if (menus != $none) #menus: menus,
        if (menuBars != $none) #menuBars: menuBars,
        if (navigationBars != $none) #navigationBars: navigationBars,
        if (navigationDrawers != $none) #navigationDrawers: navigationDrawers,
        if (progressIndicators != $none)
          #progressIndicators: progressIndicators,
        if (searchBars != $none) #searchBars: searchBars,
        if (searchViews != $none) #searchViews: searchViews,
        if (tabBars != $none) #tabBars: tabBars
      }));
  @override
  ThemeModel $make(CopyWithData data) => ThemeModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      elevatedButtons: data.get(#elevatedButtons, or: $value.elevatedButtons),
      filledButtons: data.get(#filledButtons, or: $value.filledButtons),
      outlinedButtons: data.get(#outlinedButtons, or: $value.outlinedButtons),
      textButtons: data.get(#textButtons, or: $value.textButtons),
      toggleButtons: data.get(#toggleButtons, or: $value.toggleButtons),
      iconButtons: data.get(#iconButtons, or: $value.iconButtons),
      floatingActionButtons:
          data.get(#floatingActionButtons, or: $value.floatingActionButtons),
      menuButtons: data.get(#menuButtons, or: $value.menuButtons),
      segmentedButtons:
          data.get(#segmentedButtons, or: $value.segmentedButtons),
      inputDecorations:
          data.get(#inputDecorations, or: $value.inputDecorations),
      boxDecorations: data.get(#boxDecorations, or: $value.boxDecorations),
      cards: data.get(#cards, or: $value.cards),
      snackbars: data.get(#snackbars, or: $value.snackbars),
      badges: data.get(#badges, or: $value.badges),
      appbars: data.get(#appbars, or: $value.appbars),
      bottomAppbars: data.get(#bottomAppbars, or: $value.bottomAppbars),
      dropdowns: data.get(#dropdowns, or: $value.dropdowns),
      chips: data.get(#chips, or: $value.chips),
      dialogs: data.get(#dialogs, or: $value.dialogs),
      popupMenus: data.get(#popupMenus, or: $value.popupMenus),
      sliders: data.get(#sliders, or: $value.sliders),
      scrollbars: data.get(#scrollbars, or: $value.scrollbars),
      tooltips: data.get(#tooltips, or: $value.tooltips),
      navigationRails: data.get(#navigationRails, or: $value.navigationRails),
      checkboxes: data.get(#checkboxes, or: $value.checkboxes),
      radios: data.get(#radios, or: $value.radios),
      switches: data.get(#switches, or: $value.switches),
      drawers: data.get(#drawers, or: $value.drawers),
      listTiles: data.get(#listTiles, or: $value.listTiles),
      menus: data.get(#menus, or: $value.menus),
      menuBars: data.get(#menuBars, or: $value.menuBars),
      navigationBars: data.get(#navigationBars, or: $value.navigationBars),
      navigationDrawers:
          data.get(#navigationDrawers, or: $value.navigationDrawers),
      progressIndicators:
          data.get(#progressIndicators, or: $value.progressIndicators),
      searchBars: data.get(#searchBars, or: $value.searchBars),
      searchViews: data.get(#searchViews, or: $value.searchViews),
      tabBars: data.get(#tabBars, or: $value.tabBars));

  @override
  ThemeModelCopyWith<$R2, ThemeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ThemeModelCopyWithImpl($value, $cast, t);
}

class BaseThemeModelMapper extends ClassMapperBase<BaseThemeModel> {
  BaseThemeModelMapper._();

  static BaseThemeModelMapper? _instance;
  static BaseThemeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseThemeModelMapper._());
      ColorSchemesModelMapper.ensureInitialized();
      TextTypesModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BaseThemeModel';

  static String _$id(BaseThemeModel v) => v.id;
  static const Field<BaseThemeModel, String> _f$id = Field('id', _$id);
  static String? _$name(BaseThemeModel v) => v.name;
  static const Field<BaseThemeModel, String> _f$name =
      Field('name', _$name, opt: true);
  static Map<String, ColorSchemesModel> _$colors(BaseThemeModel v) => v.colors;
  static const Field<BaseThemeModel, Map<String, ColorSchemesModel>> _f$colors =
      Field('colors', _$colors);
  static Map<String, TextTypesModel>? _$textStyles(BaseThemeModel v) =>
      v.textStyles;
  static const Field<BaseThemeModel, Map<String, TextTypesModel>>
      _f$textStyles =
      Field('textStyles', _$textStyles, key: 'text_styles', opt: true);

  @override
  final MappableFields<BaseThemeModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #colors: _f$colors,
    #textStyles: _f$textStyles,
  };

  static BaseThemeModel _instantiate(DecodingData data) {
    return BaseThemeModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        colors: data.dec(_f$colors),
        textStyles: data.dec(_f$textStyles));
  }

  @override
  final Function instantiate = _instantiate;

  static BaseThemeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseThemeModel>(map);
  }

  static BaseThemeModel fromJson(String json) {
    return ensureInitialized().decodeJson<BaseThemeModel>(json);
  }
}

mixin BaseThemeModelMappable {
  String toJson() {
    return BaseThemeModelMapper.ensureInitialized()
        .encodeJson<BaseThemeModel>(this as BaseThemeModel);
  }

  Map<String, dynamic> toMap() {
    return BaseThemeModelMapper.ensureInitialized()
        .encodeMap<BaseThemeModel>(this as BaseThemeModel);
  }

  BaseThemeModelCopyWith<BaseThemeModel, BaseThemeModel, BaseThemeModel>
      get copyWith => _BaseThemeModelCopyWithImpl(
          this as BaseThemeModel, $identity, $identity);
  @override
  String toString() {
    return BaseThemeModelMapper.ensureInitialized()
        .stringifyValue(this as BaseThemeModel);
  }

  @override
  bool operator ==(Object other) {
    return BaseThemeModelMapper.ensureInitialized()
        .equalsValue(this as BaseThemeModel, other);
  }

  @override
  int get hashCode {
    return BaseThemeModelMapper.ensureInitialized()
        .hashValue(this as BaseThemeModel);
  }
}

extension BaseThemeModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BaseThemeModel, $Out> {
  BaseThemeModelCopyWith<$R, BaseThemeModel, $Out> get $asBaseThemeModel =>
      $base.as((v, t, t2) => _BaseThemeModelCopyWithImpl(v, t, t2));
}

abstract class BaseThemeModelCopyWith<$R, $In extends BaseThemeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, ColorSchemesModel,
          ColorSchemesModelCopyWith<$R, ColorSchemesModel, ColorSchemesModel>>
      get colors;
  MapCopyWith<$R, String, TextTypesModel,
          TextTypesModelCopyWith<$R, TextTypesModel, TextTypesModel>>?
      get textStyles;
  $R call(
      {String? id,
      String? name,
      Map<String, ColorSchemesModel>? colors,
      Map<String, TextTypesModel>? textStyles});
  BaseThemeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BaseThemeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BaseThemeModel, $Out>
    implements BaseThemeModelCopyWith<$R, BaseThemeModel, $Out> {
  _BaseThemeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BaseThemeModel> $mapper =
      BaseThemeModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, ColorSchemesModel,
          ColorSchemesModelCopyWith<$R, ColorSchemesModel, ColorSchemesModel>>
      get colors => MapCopyWith($value.colors, (v, t) => v.copyWith.$chain(t),
          (v) => call(colors: v));
  @override
  MapCopyWith<$R, String, TextTypesModel,
          TextTypesModelCopyWith<$R, TextTypesModel, TextTypesModel>>?
      get textStyles => $value.textStyles != null
          ? MapCopyWith($value.textStyles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(textStyles: v))
          : null;
  @override
  $R call(
          {String? id,
          Object? name = $none,
          Map<String, ColorSchemesModel>? colors,
          Object? textStyles = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != $none) #name: name,
        if (colors != null) #colors: colors,
        if (textStyles != $none) #textStyles: textStyles
      }));
  @override
  BaseThemeModel $make(CopyWithData data) => BaseThemeModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      colors: data.get(#colors, or: $value.colors),
      textStyles: data.get(#textStyles, or: $value.textStyles));

  @override
  BaseThemeModelCopyWith<$R2, BaseThemeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BaseThemeModelCopyWithImpl($value, $cast, t);
}

class ComponentThemesModelMapper extends ClassMapperBase<ComponentThemesModel> {
  ComponentThemesModelMapper._();

  static ComponentThemesModelMapper? _instance;
  static ComponentThemesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ComponentThemesModelMapper._());
      ButtonModelMapper.ensureInitialized();
      ToggleButtonModelMapper.ensureInitialized();
      FloatingActionButtonModelMapper.ensureInitialized();
      InputDecorationModelMapper.ensureInitialized();
      BoxDecorationModelMapper.ensureInitialized();
      CardModelMapper.ensureInitialized();
      SnackbarModelMapper.ensureInitialized();
      BadgeModelMapper.ensureInitialized();
      AppbarModelMapper.ensureInitialized();
      BottomAppbarModelMapper.ensureInitialized();
      DropdownModelMapper.ensureInitialized();
      ChipModelMapper.ensureInitialized();
      DialogModelMapper.ensureInitialized();
      PopupMenuModelMapper.ensureInitialized();
      SliderModelMapper.ensureInitialized();
      ScrollbarModelMapper.ensureInitialized();
      TooltipModelMapper.ensureInitialized();
      NavigationRailModelMapper.ensureInitialized();
      CheckboxModelMapper.ensureInitialized();
      RadioModelMapper.ensureInitialized();
      SwitchModelMapper.ensureInitialized();
      DrawerModelMapper.ensureInitialized();
      ListTileModelMapper.ensureInitialized();
      MenuStyleModelMapper.ensureInitialized();
      MenuBarModelMapper.ensureInitialized();
      NavigationBarModelMapper.ensureInitialized();
      NavigationDrawerModelMapper.ensureInitialized();
      ProgressIndicatorModelMapper.ensureInitialized();
      SearchBarModelMapper.ensureInitialized();
      SearchViewModelMapper.ensureInitialized();
      TabBarModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ComponentThemesModel';

  static String _$id(ComponentThemesModel v) => v.id;
  static const Field<ComponentThemesModel, String> _f$id = Field('id', _$id);
  static String? _$name(ComponentThemesModel v) => v.name;
  static const Field<ComponentThemesModel, String> _f$name =
      Field('name', _$name, opt: true);
  static Map<String, ButtonModel>? _$elevatedButtons(ComponentThemesModel v) =>
      v.elevatedButtons;
  static const Field<ComponentThemesModel, Map<String, ButtonModel>>
      _f$elevatedButtons = Field('elevatedButtons', _$elevatedButtons,
          key: 'elevated_buttons', opt: true);
  static Map<String, ButtonModel>? _$filledButtons(ComponentThemesModel v) =>
      v.filledButtons;
  static const Field<ComponentThemesModel, Map<String, ButtonModel>>
      _f$filledButtons =
      Field('filledButtons', _$filledButtons, key: 'filled_buttons', opt: true);
  static Map<String, ButtonModel>? _$outlinedButtons(ComponentThemesModel v) =>
      v.outlinedButtons;
  static const Field<ComponentThemesModel, Map<String, ButtonModel>>
      _f$outlinedButtons = Field('outlinedButtons', _$outlinedButtons,
          key: 'outlined_buttons', opt: true);
  static Map<String, ButtonModel>? _$textButtons(ComponentThemesModel v) =>
      v.textButtons;
  static const Field<ComponentThemesModel, Map<String, ButtonModel>>
      _f$textButtons =
      Field('textButtons', _$textButtons, key: 'text_buttons', opt: true);
  static Map<String, ToggleButtonModel>? _$toggleButtons(
          ComponentThemesModel v) =>
      v.toggleButtons;
  static const Field<ComponentThemesModel, Map<String, ToggleButtonModel>>
      _f$toggleButtons =
      Field('toggleButtons', _$toggleButtons, key: 'toggle_buttons', opt: true);
  static Map<String, ButtonModel>? _$iconButtons(ComponentThemesModel v) =>
      v.iconButtons;
  static const Field<ComponentThemesModel, Map<String, ButtonModel>>
      _f$iconButtons =
      Field('iconButtons', _$iconButtons, key: 'icon_buttons', opt: true);
  static Map<String, FloatingActionButtonModel>? _$floatingActionButtons(
          ComponentThemesModel v) =>
      v.floatingActionButtons;
  static const Field<ComponentThemesModel,
          Map<String, FloatingActionButtonModel>> _f$floatingActionButtons =
      Field('floatingActionButtons', _$floatingActionButtons,
          key: 'floating_action_buttons', opt: true);
  static Map<String, ButtonModel>? _$menuButtons(ComponentThemesModel v) =>
      v.menuButtons;
  static const Field<ComponentThemesModel, Map<String, ButtonModel>>
      _f$menuButtons =
      Field('menuButtons', _$menuButtons, key: 'menu_buttons', opt: true);
  static Map<String, ButtonModel>? _$segmentedButtons(ComponentThemesModel v) =>
      v.segmentedButtons;
  static const Field<ComponentThemesModel, Map<String, ButtonModel>>
      _f$segmentedButtons = Field('segmentedButtons', _$segmentedButtons,
          key: 'segmented_buttons', opt: true);
  static Map<String, InputDecorationModel>? _$inputDecorations(
          ComponentThemesModel v) =>
      v.inputDecorations;
  static const Field<ComponentThemesModel, Map<String, InputDecorationModel>>
      _f$inputDecorations = Field('inputDecorations', _$inputDecorations,
          key: 'input_decorations', opt: true);
  static Map<String, BoxDecorationModel>? _$boxDecorations(
          ComponentThemesModel v) =>
      v.boxDecorations;
  static const Field<ComponentThemesModel, Map<String, BoxDecorationModel>>
      _f$boxDecorations = Field('boxDecorations', _$boxDecorations,
          key: 'box_decorations', opt: true);
  static Map<String, CardModel>? _$cards(ComponentThemesModel v) => v.cards;
  static const Field<ComponentThemesModel, Map<String, CardModel>> _f$cards =
      Field('cards', _$cards, opt: true);
  static Map<String, SnackbarModel>? _$snackbars(ComponentThemesModel v) =>
      v.snackbars;
  static const Field<ComponentThemesModel, Map<String, SnackbarModel>>
      _f$snackbars = Field('snackbars', _$snackbars, opt: true);
  static Map<String, BadgeModel>? _$badges(ComponentThemesModel v) => v.badges;
  static const Field<ComponentThemesModel, Map<String, BadgeModel>> _f$badges =
      Field('badges', _$badges, opt: true);
  static Map<String, AppbarModel>? _$appbars(ComponentThemesModel v) =>
      v.appbars;
  static const Field<ComponentThemesModel, Map<String, AppbarModel>>
      _f$appbars = Field('appbars', _$appbars, opt: true);
  static Map<String, BottomAppbarModel>? _$bottomAppbars(
          ComponentThemesModel v) =>
      v.bottomAppbars;
  static const Field<ComponentThemesModel, Map<String, BottomAppbarModel>>
      _f$bottomAppbars =
      Field('bottomAppbars', _$bottomAppbars, key: 'bottom_appbars', opt: true);
  static Map<String, DropdownModel>? _$dropdowns(ComponentThemesModel v) =>
      v.dropdowns;
  static const Field<ComponentThemesModel, Map<String, DropdownModel>>
      _f$dropdowns = Field('dropdowns', _$dropdowns, opt: true);
  static Map<String, ChipModel>? _$chips(ComponentThemesModel v) => v.chips;
  static const Field<ComponentThemesModel, Map<String, ChipModel>> _f$chips =
      Field('chips', _$chips, opt: true);
  static Map<String, DialogModel>? _$dialogs(ComponentThemesModel v) =>
      v.dialogs;
  static const Field<ComponentThemesModel, Map<String, DialogModel>>
      _f$dialogs = Field('dialogs', _$dialogs, opt: true);
  static Map<String, PopupMenuModel>? _$popupMenus(ComponentThemesModel v) =>
      v.popupMenus;
  static const Field<ComponentThemesModel, Map<String, PopupMenuModel>>
      _f$popupMenus =
      Field('popupMenus', _$popupMenus, key: 'popup_menus', opt: true);
  static Map<String, SliderModel>? _$sliders(ComponentThemesModel v) =>
      v.sliders;
  static const Field<ComponentThemesModel, Map<String, SliderModel>>
      _f$sliders = Field('sliders', _$sliders, opt: true);
  static Map<String, ScrollbarModel>? _$scrollbars(ComponentThemesModel v) =>
      v.scrollbars;
  static const Field<ComponentThemesModel, Map<String, ScrollbarModel>>
      _f$scrollbars = Field('scrollbars', _$scrollbars, opt: true);
  static Map<String, TooltipModel>? _$tooltips(ComponentThemesModel v) =>
      v.tooltips;
  static const Field<ComponentThemesModel, Map<String, TooltipModel>>
      _f$tooltips = Field('tooltips', _$tooltips, opt: true);
  static Map<String, NavigationRailModel>? _$navigationRails(
          ComponentThemesModel v) =>
      v.navigationRails;
  static const Field<ComponentThemesModel, Map<String, NavigationRailModel>>
      _f$navigationRails = Field('navigationRails', _$navigationRails,
          key: 'navigation_rails', opt: true);
  static Map<String, CheckboxModel>? _$checkboxes(ComponentThemesModel v) =>
      v.checkboxes;
  static const Field<ComponentThemesModel, Map<String, CheckboxModel>>
      _f$checkboxes = Field('checkboxes', _$checkboxes, opt: true);
  static Map<String, RadioModel>? _$radios(ComponentThemesModel v) => v.radios;
  static const Field<ComponentThemesModel, Map<String, RadioModel>> _f$radios =
      Field('radios', _$radios, opt: true);
  static Map<String, SwitchModel>? _$switches(ComponentThemesModel v) =>
      v.switches;
  static const Field<ComponentThemesModel, Map<String, SwitchModel>>
      _f$switches = Field('switches', _$switches, opt: true);
  static Map<String, DrawerModel>? _$drawers(ComponentThemesModel v) =>
      v.drawers;
  static const Field<ComponentThemesModel, Map<String, DrawerModel>>
      _f$drawers = Field('drawers', _$drawers, opt: true);
  static Map<String, ListTileModel>? _$listTiles(ComponentThemesModel v) =>
      v.listTiles;
  static const Field<ComponentThemesModel, Map<String, ListTileModel>>
      _f$listTiles =
      Field('listTiles', _$listTiles, key: 'list_tiles', opt: true);
  static Map<String, MenuStyleModel>? _$menus(ComponentThemesModel v) =>
      v.menus;
  static const Field<ComponentThemesModel, Map<String, MenuStyleModel>>
      _f$menus = Field('menus', _$menus, opt: true);
  static Map<String, MenuBarModel>? _$menuBars(ComponentThemesModel v) =>
      v.menuBars;
  static const Field<ComponentThemesModel, Map<String, MenuBarModel>>
      _f$menuBars = Field('menuBars', _$menuBars, key: 'menu_bars', opt: true);
  static Map<String, NavigationBarModel>? _$navigationBars(
          ComponentThemesModel v) =>
      v.navigationBars;
  static const Field<ComponentThemesModel, Map<String, NavigationBarModel>>
      _f$navigationBars = Field('navigationBars', _$navigationBars,
          key: 'navigation_bars', opt: true);
  static Map<String, NavigationDrawerModel>? _$navigationDrawers(
          ComponentThemesModel v) =>
      v.navigationDrawers;
  static const Field<ComponentThemesModel, Map<String, NavigationDrawerModel>>
      _f$navigationDrawers = Field('navigationDrawers', _$navigationDrawers,
          key: 'navigation_drawers', opt: true);
  static Map<String, ProgressIndicatorModel>? _$progressIndicators(
          ComponentThemesModel v) =>
      v.progressIndicators;
  static const Field<ComponentThemesModel, Map<String, ProgressIndicatorModel>>
      _f$progressIndicators = Field('progressIndicators', _$progressIndicators,
          key: 'progress_indicators', opt: true);
  static Map<String, SearchBarModel>? _$searchBars(ComponentThemesModel v) =>
      v.searchBars;
  static const Field<ComponentThemesModel, Map<String, SearchBarModel>>
      _f$searchBars =
      Field('searchBars', _$searchBars, key: 'search_bars', opt: true);
  static Map<String, SearchViewModel>? _$searchViews(ComponentThemesModel v) =>
      v.searchViews;
  static const Field<ComponentThemesModel, Map<String, SearchViewModel>>
      _f$searchViews =
      Field('searchViews', _$searchViews, key: 'search_views', opt: true);
  static Map<String, TabBarModel>? _$tabBars(ComponentThemesModel v) =>
      v.tabBars;
  static const Field<ComponentThemesModel, Map<String, TabBarModel>>
      _f$tabBars = Field('tabBars', _$tabBars, key: 'tab_bars', opt: true);

  @override
  final MappableFields<ComponentThemesModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #elevatedButtons: _f$elevatedButtons,
    #filledButtons: _f$filledButtons,
    #outlinedButtons: _f$outlinedButtons,
    #textButtons: _f$textButtons,
    #toggleButtons: _f$toggleButtons,
    #iconButtons: _f$iconButtons,
    #floatingActionButtons: _f$floatingActionButtons,
    #menuButtons: _f$menuButtons,
    #segmentedButtons: _f$segmentedButtons,
    #inputDecorations: _f$inputDecorations,
    #boxDecorations: _f$boxDecorations,
    #cards: _f$cards,
    #snackbars: _f$snackbars,
    #badges: _f$badges,
    #appbars: _f$appbars,
    #bottomAppbars: _f$bottomAppbars,
    #dropdowns: _f$dropdowns,
    #chips: _f$chips,
    #dialogs: _f$dialogs,
    #popupMenus: _f$popupMenus,
    #sliders: _f$sliders,
    #scrollbars: _f$scrollbars,
    #tooltips: _f$tooltips,
    #navigationRails: _f$navigationRails,
    #checkboxes: _f$checkboxes,
    #radios: _f$radios,
    #switches: _f$switches,
    #drawers: _f$drawers,
    #listTiles: _f$listTiles,
    #menus: _f$menus,
    #menuBars: _f$menuBars,
    #navigationBars: _f$navigationBars,
    #navigationDrawers: _f$navigationDrawers,
    #progressIndicators: _f$progressIndicators,
    #searchBars: _f$searchBars,
    #searchViews: _f$searchViews,
    #tabBars: _f$tabBars,
  };

  static ComponentThemesModel _instantiate(DecodingData data) {
    return ComponentThemesModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        elevatedButtons: data.dec(_f$elevatedButtons),
        filledButtons: data.dec(_f$filledButtons),
        outlinedButtons: data.dec(_f$outlinedButtons),
        textButtons: data.dec(_f$textButtons),
        toggleButtons: data.dec(_f$toggleButtons),
        iconButtons: data.dec(_f$iconButtons),
        floatingActionButtons: data.dec(_f$floatingActionButtons),
        menuButtons: data.dec(_f$menuButtons),
        segmentedButtons: data.dec(_f$segmentedButtons),
        inputDecorations: data.dec(_f$inputDecorations),
        boxDecorations: data.dec(_f$boxDecorations),
        cards: data.dec(_f$cards),
        snackbars: data.dec(_f$snackbars),
        badges: data.dec(_f$badges),
        appbars: data.dec(_f$appbars),
        bottomAppbars: data.dec(_f$bottomAppbars),
        dropdowns: data.dec(_f$dropdowns),
        chips: data.dec(_f$chips),
        dialogs: data.dec(_f$dialogs),
        popupMenus: data.dec(_f$popupMenus),
        sliders: data.dec(_f$sliders),
        scrollbars: data.dec(_f$scrollbars),
        tooltips: data.dec(_f$tooltips),
        navigationRails: data.dec(_f$navigationRails),
        checkboxes: data.dec(_f$checkboxes),
        radios: data.dec(_f$radios),
        switches: data.dec(_f$switches),
        drawers: data.dec(_f$drawers),
        listTiles: data.dec(_f$listTiles),
        menus: data.dec(_f$menus),
        menuBars: data.dec(_f$menuBars),
        navigationBars: data.dec(_f$navigationBars),
        navigationDrawers: data.dec(_f$navigationDrawers),
        progressIndicators: data.dec(_f$progressIndicators),
        searchBars: data.dec(_f$searchBars),
        searchViews: data.dec(_f$searchViews),
        tabBars: data.dec(_f$tabBars));
  }

  @override
  final Function instantiate = _instantiate;

  static ComponentThemesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ComponentThemesModel>(map);
  }

  static ComponentThemesModel fromJson(String json) {
    return ensureInitialized().decodeJson<ComponentThemesModel>(json);
  }
}

mixin ComponentThemesModelMappable {
  String toJson() {
    return ComponentThemesModelMapper.ensureInitialized()
        .encodeJson<ComponentThemesModel>(this as ComponentThemesModel);
  }

  Map<String, dynamic> toMap() {
    return ComponentThemesModelMapper.ensureInitialized()
        .encodeMap<ComponentThemesModel>(this as ComponentThemesModel);
  }

  ComponentThemesModelCopyWith<ComponentThemesModel, ComponentThemesModel,
          ComponentThemesModel>
      get copyWith => _ComponentThemesModelCopyWithImpl(
          this as ComponentThemesModel, $identity, $identity);
  @override
  String toString() {
    return ComponentThemesModelMapper.ensureInitialized()
        .stringifyValue(this as ComponentThemesModel);
  }

  @override
  bool operator ==(Object other) {
    return ComponentThemesModelMapper.ensureInitialized()
        .equalsValue(this as ComponentThemesModel, other);
  }

  @override
  int get hashCode {
    return ComponentThemesModelMapper.ensureInitialized()
        .hashValue(this as ComponentThemesModel);
  }
}

extension ComponentThemesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ComponentThemesModel, $Out> {
  ComponentThemesModelCopyWith<$R, ComponentThemesModel, $Out>
      get $asComponentThemesModel =>
          $base.as((v, t, t2) => _ComponentThemesModelCopyWithImpl(v, t, t2));
}

abstract class ComponentThemesModelCopyWith<
    $R,
    $In extends ComponentThemesModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get elevatedButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get filledButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get outlinedButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get textButtons;
  MapCopyWith<$R, String, ToggleButtonModel,
          ToggleButtonModelCopyWith<$R, ToggleButtonModel, ToggleButtonModel>>?
      get toggleButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get iconButtons;
  MapCopyWith<
      $R,
      String,
      FloatingActionButtonModel,
      FloatingActionButtonModelCopyWith<$R, FloatingActionButtonModel,
          FloatingActionButtonModel>>? get floatingActionButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get menuButtons;
  MapCopyWith<$R, String, ButtonModel,
      ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>? get segmentedButtons;
  MapCopyWith<
      $R,
      String,
      InputDecorationModel,
      InputDecorationModelCopyWith<$R, InputDecorationModel,
          InputDecorationModel>>? get inputDecorations;
  MapCopyWith<
      $R,
      String,
      BoxDecorationModel,
      BoxDecorationModelCopyWith<$R, BoxDecorationModel,
          BoxDecorationModel>>? get boxDecorations;
  MapCopyWith<$R, String, CardModel,
      CardModelCopyWith<$R, CardModel, CardModel>>? get cards;
  MapCopyWith<$R, String, SnackbarModel,
      SnackbarModelCopyWith<$R, SnackbarModel, SnackbarModel>>? get snackbars;
  MapCopyWith<$R, String, BadgeModel,
      BadgeModelCopyWith<$R, BadgeModel, BadgeModel>>? get badges;
  MapCopyWith<$R, String, AppbarModel,
      AppbarModelCopyWith<$R, AppbarModel, AppbarModel>>? get appbars;
  MapCopyWith<$R, String, BottomAppbarModel,
          BottomAppbarModelCopyWith<$R, BottomAppbarModel, BottomAppbarModel>>?
      get bottomAppbars;
  MapCopyWith<$R, String, DropdownModel,
      DropdownModelCopyWith<$R, DropdownModel, DropdownModel>>? get dropdowns;
  MapCopyWith<$R, String, ChipModel,
      ChipModelCopyWith<$R, ChipModel, ChipModel>>? get chips;
  MapCopyWith<$R, String, DialogModel,
      DialogModelCopyWith<$R, DialogModel, DialogModel>>? get dialogs;
  MapCopyWith<$R, String, PopupMenuModel,
          PopupMenuModelCopyWith<$R, PopupMenuModel, PopupMenuModel>>?
      get popupMenus;
  MapCopyWith<$R, String, SliderModel,
      SliderModelCopyWith<$R, SliderModel, SliderModel>>? get sliders;
  MapCopyWith<$R, String, ScrollbarModel,
          ScrollbarModelCopyWith<$R, ScrollbarModel, ScrollbarModel>>?
      get scrollbars;
  MapCopyWith<$R, String, TooltipModel,
      TooltipModelCopyWith<$R, TooltipModel, TooltipModel>>? get tooltips;
  MapCopyWith<
      $R,
      String,
      NavigationRailModel,
      NavigationRailModelCopyWith<$R, NavigationRailModel,
          NavigationRailModel>>? get navigationRails;
  MapCopyWith<$R, String, CheckboxModel,
      CheckboxModelCopyWith<$R, CheckboxModel, CheckboxModel>>? get checkboxes;
  MapCopyWith<$R, String, RadioModel,
      RadioModelCopyWith<$R, RadioModel, RadioModel>>? get radios;
  MapCopyWith<$R, String, SwitchModel,
      SwitchModelCopyWith<$R, SwitchModel, SwitchModel>>? get switches;
  MapCopyWith<$R, String, DrawerModel,
      DrawerModelCopyWith<$R, DrawerModel, DrawerModel>>? get drawers;
  MapCopyWith<$R, String, ListTileModel,
      ListTileModelCopyWith<$R, ListTileModel, ListTileModel>>? get listTiles;
  MapCopyWith<$R, String, MenuStyleModel,
      MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>>? get menus;
  MapCopyWith<$R, String, MenuBarModel,
      MenuBarModelCopyWith<$R, MenuBarModel, MenuBarModel>>? get menuBars;
  MapCopyWith<
      $R,
      String,
      NavigationBarModel,
      NavigationBarModelCopyWith<$R, NavigationBarModel,
          NavigationBarModel>>? get navigationBars;
  MapCopyWith<
      $R,
      String,
      NavigationDrawerModel,
      NavigationDrawerModelCopyWith<$R, NavigationDrawerModel,
          NavigationDrawerModel>>? get navigationDrawers;
  MapCopyWith<
      $R,
      String,
      ProgressIndicatorModel,
      ProgressIndicatorModelCopyWith<$R, ProgressIndicatorModel,
          ProgressIndicatorModel>>? get progressIndicators;
  MapCopyWith<$R, String, SearchBarModel,
          SearchBarModelCopyWith<$R, SearchBarModel, SearchBarModel>>?
      get searchBars;
  MapCopyWith<$R, String, SearchViewModel,
          SearchViewModelCopyWith<$R, SearchViewModel, SearchViewModel>>?
      get searchViews;
  MapCopyWith<$R, String, TabBarModel,
      TabBarModelCopyWith<$R, TabBarModel, TabBarModel>>? get tabBars;
  $R call(
      {String? id,
      String? name,
      Map<String, ButtonModel>? elevatedButtons,
      Map<String, ButtonModel>? filledButtons,
      Map<String, ButtonModel>? outlinedButtons,
      Map<String, ButtonModel>? textButtons,
      Map<String, ToggleButtonModel>? toggleButtons,
      Map<String, ButtonModel>? iconButtons,
      Map<String, FloatingActionButtonModel>? floatingActionButtons,
      Map<String, ButtonModel>? menuButtons,
      Map<String, ButtonModel>? segmentedButtons,
      Map<String, InputDecorationModel>? inputDecorations,
      Map<String, BoxDecorationModel>? boxDecorations,
      Map<String, CardModel>? cards,
      Map<String, SnackbarModel>? snackbars,
      Map<String, BadgeModel>? badges,
      Map<String, AppbarModel>? appbars,
      Map<String, BottomAppbarModel>? bottomAppbars,
      Map<String, DropdownModel>? dropdowns,
      Map<String, ChipModel>? chips,
      Map<String, DialogModel>? dialogs,
      Map<String, PopupMenuModel>? popupMenus,
      Map<String, SliderModel>? sliders,
      Map<String, ScrollbarModel>? scrollbars,
      Map<String, TooltipModel>? tooltips,
      Map<String, NavigationRailModel>? navigationRails,
      Map<String, CheckboxModel>? checkboxes,
      Map<String, RadioModel>? radios,
      Map<String, SwitchModel>? switches,
      Map<String, DrawerModel>? drawers,
      Map<String, ListTileModel>? listTiles,
      Map<String, MenuStyleModel>? menus,
      Map<String, MenuBarModel>? menuBars,
      Map<String, NavigationBarModel>? navigationBars,
      Map<String, NavigationDrawerModel>? navigationDrawers,
      Map<String, ProgressIndicatorModel>? progressIndicators,
      Map<String, SearchBarModel>? searchBars,
      Map<String, SearchViewModel>? searchViews,
      Map<String, TabBarModel>? tabBars});
  ComponentThemesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ComponentThemesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ComponentThemesModel, $Out>
    implements ComponentThemesModelCopyWith<$R, ComponentThemesModel, $Out> {
  _ComponentThemesModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ComponentThemesModel> $mapper =
      ComponentThemesModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get elevatedButtons => $value.elevatedButtons != null
          ? MapCopyWith($value.elevatedButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(elevatedButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get filledButtons => $value.filledButtons != null
          ? MapCopyWith($value.filledButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(filledButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get outlinedButtons => $value.outlinedButtons != null
          ? MapCopyWith($value.outlinedButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(outlinedButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get textButtons => $value.textButtons != null
          ? MapCopyWith($value.textButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(textButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ToggleButtonModel,
          ToggleButtonModelCopyWith<$R, ToggleButtonModel, ToggleButtonModel>>?
      get toggleButtons => $value.toggleButtons != null
          ? MapCopyWith($value.toggleButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(toggleButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get iconButtons => $value.iconButtons != null
          ? MapCopyWith($value.iconButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(iconButtons: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      FloatingActionButtonModel,
      FloatingActionButtonModelCopyWith<$R, FloatingActionButtonModel,
          FloatingActionButtonModel>>? get floatingActionButtons =>
      $value.floatingActionButtons != null
          ? MapCopyWith(
              $value.floatingActionButtons!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(floatingActionButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get menuButtons => $value.menuButtons != null
          ? MapCopyWith($value.menuButtons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(menuButtons: v))
          : null;
  @override
  MapCopyWith<$R, String, ButtonModel,
          ButtonModelCopyWith<$R, ButtonModel, ButtonModel>>?
      get segmentedButtons => $value.segmentedButtons != null
          ? MapCopyWith($value.segmentedButtons!,
              (v, t) => v.copyWith.$chain(t), (v) => call(segmentedButtons: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      InputDecorationModel,
      InputDecorationModelCopyWith<$R, InputDecorationModel,
          InputDecorationModel>>? get inputDecorations =>
      $value.inputDecorations != null
          ? MapCopyWith($value.inputDecorations!,
              (v, t) => v.copyWith.$chain(t), (v) => call(inputDecorations: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      BoxDecorationModel,
      BoxDecorationModelCopyWith<$R, BoxDecorationModel,
          BoxDecorationModel>>? get boxDecorations =>
      $value.boxDecorations != null
          ? MapCopyWith($value.boxDecorations!, (v, t) => v.copyWith.$chain(t),
              (v) => call(boxDecorations: v))
          : null;
  @override
  MapCopyWith<$R, String, CardModel,
      CardModelCopyWith<$R, CardModel, CardModel>>? get cards => $value.cards !=
          null
      ? MapCopyWith(
          $value.cards!, (v, t) => v.copyWith.$chain(t), (v) => call(cards: v))
      : null;
  @override
  MapCopyWith<$R, String, SnackbarModel,
          SnackbarModelCopyWith<$R, SnackbarModel, SnackbarModel>>?
      get snackbars => $value.snackbars != null
          ? MapCopyWith($value.snackbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(snackbars: v))
          : null;
  @override
  MapCopyWith<$R, String, BadgeModel,
          BadgeModelCopyWith<$R, BadgeModel, BadgeModel>>?
      get badges => $value.badges != null
          ? MapCopyWith($value.badges!, (v, t) => v.copyWith.$chain(t),
              (v) => call(badges: v))
          : null;
  @override
  MapCopyWith<$R, String, AppbarModel,
          AppbarModelCopyWith<$R, AppbarModel, AppbarModel>>?
      get appbars => $value.appbars != null
          ? MapCopyWith($value.appbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(appbars: v))
          : null;
  @override
  MapCopyWith<$R, String, BottomAppbarModel,
          BottomAppbarModelCopyWith<$R, BottomAppbarModel, BottomAppbarModel>>?
      get bottomAppbars => $value.bottomAppbars != null
          ? MapCopyWith($value.bottomAppbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(bottomAppbars: v))
          : null;
  @override
  MapCopyWith<$R, String, DropdownModel,
          DropdownModelCopyWith<$R, DropdownModel, DropdownModel>>?
      get dropdowns => $value.dropdowns != null
          ? MapCopyWith($value.dropdowns!, (v, t) => v.copyWith.$chain(t),
              (v) => call(dropdowns: v))
          : null;
  @override
  MapCopyWith<$R, String, ChipModel,
      ChipModelCopyWith<$R, ChipModel, ChipModel>>? get chips => $value.chips !=
          null
      ? MapCopyWith(
          $value.chips!, (v, t) => v.copyWith.$chain(t), (v) => call(chips: v))
      : null;
  @override
  MapCopyWith<$R, String, DialogModel,
          DialogModelCopyWith<$R, DialogModel, DialogModel>>?
      get dialogs => $value.dialogs != null
          ? MapCopyWith($value.dialogs!, (v, t) => v.copyWith.$chain(t),
              (v) => call(dialogs: v))
          : null;
  @override
  MapCopyWith<$R, String, PopupMenuModel,
          PopupMenuModelCopyWith<$R, PopupMenuModel, PopupMenuModel>>?
      get popupMenus => $value.popupMenus != null
          ? MapCopyWith($value.popupMenus!, (v, t) => v.copyWith.$chain(t),
              (v) => call(popupMenus: v))
          : null;
  @override
  MapCopyWith<$R, String, SliderModel,
          SliderModelCopyWith<$R, SliderModel, SliderModel>>?
      get sliders => $value.sliders != null
          ? MapCopyWith($value.sliders!, (v, t) => v.copyWith.$chain(t),
              (v) => call(sliders: v))
          : null;
  @override
  MapCopyWith<$R, String, ScrollbarModel,
          ScrollbarModelCopyWith<$R, ScrollbarModel, ScrollbarModel>>?
      get scrollbars => $value.scrollbars != null
          ? MapCopyWith($value.scrollbars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(scrollbars: v))
          : null;
  @override
  MapCopyWith<$R, String, TooltipModel,
          TooltipModelCopyWith<$R, TooltipModel, TooltipModel>>?
      get tooltips => $value.tooltips != null
          ? MapCopyWith($value.tooltips!, (v, t) => v.copyWith.$chain(t),
              (v) => call(tooltips: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      NavigationRailModel,
      NavigationRailModelCopyWith<$R, NavigationRailModel,
          NavigationRailModel>>? get navigationRails =>
      $value.navigationRails != null
          ? MapCopyWith($value.navigationRails!, (v, t) => v.copyWith.$chain(t),
              (v) => call(navigationRails: v))
          : null;
  @override
  MapCopyWith<$R, String, CheckboxModel,
          CheckboxModelCopyWith<$R, CheckboxModel, CheckboxModel>>?
      get checkboxes => $value.checkboxes != null
          ? MapCopyWith($value.checkboxes!, (v, t) => v.copyWith.$chain(t),
              (v) => call(checkboxes: v))
          : null;
  @override
  MapCopyWith<$R, String, RadioModel,
          RadioModelCopyWith<$R, RadioModel, RadioModel>>?
      get radios => $value.radios != null
          ? MapCopyWith($value.radios!, (v, t) => v.copyWith.$chain(t),
              (v) => call(radios: v))
          : null;
  @override
  MapCopyWith<$R, String, SwitchModel,
          SwitchModelCopyWith<$R, SwitchModel, SwitchModel>>?
      get switches => $value.switches != null
          ? MapCopyWith($value.switches!, (v, t) => v.copyWith.$chain(t),
              (v) => call(switches: v))
          : null;
  @override
  MapCopyWith<$R, String, DrawerModel,
          DrawerModelCopyWith<$R, DrawerModel, DrawerModel>>?
      get drawers => $value.drawers != null
          ? MapCopyWith($value.drawers!, (v, t) => v.copyWith.$chain(t),
              (v) => call(drawers: v))
          : null;
  @override
  MapCopyWith<$R, String, ListTileModel,
          ListTileModelCopyWith<$R, ListTileModel, ListTileModel>>?
      get listTiles => $value.listTiles != null
          ? MapCopyWith($value.listTiles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(listTiles: v))
          : null;
  @override
  MapCopyWith<$R, String, MenuStyleModel,
          MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>>?
      get menus => $value.menus != null
          ? MapCopyWith($value.menus!, (v, t) => v.copyWith.$chain(t),
              (v) => call(menus: v))
          : null;
  @override
  MapCopyWith<$R, String, MenuBarModel,
          MenuBarModelCopyWith<$R, MenuBarModel, MenuBarModel>>?
      get menuBars => $value.menuBars != null
          ? MapCopyWith($value.menuBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(menuBars: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      NavigationBarModel,
      NavigationBarModelCopyWith<$R, NavigationBarModel,
          NavigationBarModel>>? get navigationBars =>
      $value.navigationBars != null
          ? MapCopyWith($value.navigationBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(navigationBars: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      NavigationDrawerModel,
      NavigationDrawerModelCopyWith<$R, NavigationDrawerModel,
          NavigationDrawerModel>>? get navigationDrawers =>
      $value.navigationDrawers != null
          ? MapCopyWith($value.navigationDrawers!,
              (v, t) => v.copyWith.$chain(t), (v) => call(navigationDrawers: v))
          : null;
  @override
  MapCopyWith<
      $R,
      String,
      ProgressIndicatorModel,
      ProgressIndicatorModelCopyWith<$R, ProgressIndicatorModel,
          ProgressIndicatorModel>>? get progressIndicators =>
      $value.progressIndicators != null
          ? MapCopyWith(
              $value.progressIndicators!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(progressIndicators: v))
          : null;
  @override
  MapCopyWith<$R, String, SearchBarModel,
          SearchBarModelCopyWith<$R, SearchBarModel, SearchBarModel>>?
      get searchBars => $value.searchBars != null
          ? MapCopyWith($value.searchBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(searchBars: v))
          : null;
  @override
  MapCopyWith<$R, String, SearchViewModel,
          SearchViewModelCopyWith<$R, SearchViewModel, SearchViewModel>>?
      get searchViews => $value.searchViews != null
          ? MapCopyWith($value.searchViews!, (v, t) => v.copyWith.$chain(t),
              (v) => call(searchViews: v))
          : null;
  @override
  MapCopyWith<$R, String, TabBarModel,
          TabBarModelCopyWith<$R, TabBarModel, TabBarModel>>?
      get tabBars => $value.tabBars != null
          ? MapCopyWith($value.tabBars!, (v, t) => v.copyWith.$chain(t),
              (v) => call(tabBars: v))
          : null;
  @override
  $R call(
          {String? id,
          Object? name = $none,
          Object? elevatedButtons = $none,
          Object? filledButtons = $none,
          Object? outlinedButtons = $none,
          Object? textButtons = $none,
          Object? toggleButtons = $none,
          Object? iconButtons = $none,
          Object? floatingActionButtons = $none,
          Object? menuButtons = $none,
          Object? segmentedButtons = $none,
          Object? inputDecorations = $none,
          Object? boxDecorations = $none,
          Object? cards = $none,
          Object? snackbars = $none,
          Object? badges = $none,
          Object? appbars = $none,
          Object? bottomAppbars = $none,
          Object? dropdowns = $none,
          Object? chips = $none,
          Object? dialogs = $none,
          Object? popupMenus = $none,
          Object? sliders = $none,
          Object? scrollbars = $none,
          Object? tooltips = $none,
          Object? navigationRails = $none,
          Object? checkboxes = $none,
          Object? radios = $none,
          Object? switches = $none,
          Object? drawers = $none,
          Object? listTiles = $none,
          Object? menus = $none,
          Object? menuBars = $none,
          Object? navigationBars = $none,
          Object? navigationDrawers = $none,
          Object? progressIndicators = $none,
          Object? searchBars = $none,
          Object? searchViews = $none,
          Object? tabBars = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != $none) #name: name,
        if (elevatedButtons != $none) #elevatedButtons: elevatedButtons,
        if (filledButtons != $none) #filledButtons: filledButtons,
        if (outlinedButtons != $none) #outlinedButtons: outlinedButtons,
        if (textButtons != $none) #textButtons: textButtons,
        if (toggleButtons != $none) #toggleButtons: toggleButtons,
        if (iconButtons != $none) #iconButtons: iconButtons,
        if (floatingActionButtons != $none)
          #floatingActionButtons: floatingActionButtons,
        if (menuButtons != $none) #menuButtons: menuButtons,
        if (segmentedButtons != $none) #segmentedButtons: segmentedButtons,
        if (inputDecorations != $none) #inputDecorations: inputDecorations,
        if (boxDecorations != $none) #boxDecorations: boxDecorations,
        if (cards != $none) #cards: cards,
        if (snackbars != $none) #snackbars: snackbars,
        if (badges != $none) #badges: badges,
        if (appbars != $none) #appbars: appbars,
        if (bottomAppbars != $none) #bottomAppbars: bottomAppbars,
        if (dropdowns != $none) #dropdowns: dropdowns,
        if (chips != $none) #chips: chips,
        if (dialogs != $none) #dialogs: dialogs,
        if (popupMenus != $none) #popupMenus: popupMenus,
        if (sliders != $none) #sliders: sliders,
        if (scrollbars != $none) #scrollbars: scrollbars,
        if (tooltips != $none) #tooltips: tooltips,
        if (navigationRails != $none) #navigationRails: navigationRails,
        if (checkboxes != $none) #checkboxes: checkboxes,
        if (radios != $none) #radios: radios,
        if (switches != $none) #switches: switches,
        if (drawers != $none) #drawers: drawers,
        if (listTiles != $none) #listTiles: listTiles,
        if (menus != $none) #menus: menus,
        if (menuBars != $none) #menuBars: menuBars,
        if (navigationBars != $none) #navigationBars: navigationBars,
        if (navigationDrawers != $none) #navigationDrawers: navigationDrawers,
        if (progressIndicators != $none)
          #progressIndicators: progressIndicators,
        if (searchBars != $none) #searchBars: searchBars,
        if (searchViews != $none) #searchViews: searchViews,
        if (tabBars != $none) #tabBars: tabBars
      }));
  @override
  ComponentThemesModel $make(CopyWithData data) => ComponentThemesModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      elevatedButtons: data.get(#elevatedButtons, or: $value.elevatedButtons),
      filledButtons: data.get(#filledButtons, or: $value.filledButtons),
      outlinedButtons: data.get(#outlinedButtons, or: $value.outlinedButtons),
      textButtons: data.get(#textButtons, or: $value.textButtons),
      toggleButtons: data.get(#toggleButtons, or: $value.toggleButtons),
      iconButtons: data.get(#iconButtons, or: $value.iconButtons),
      floatingActionButtons:
          data.get(#floatingActionButtons, or: $value.floatingActionButtons),
      menuButtons: data.get(#menuButtons, or: $value.menuButtons),
      segmentedButtons:
          data.get(#segmentedButtons, or: $value.segmentedButtons),
      inputDecorations:
          data.get(#inputDecorations, or: $value.inputDecorations),
      boxDecorations: data.get(#boxDecorations, or: $value.boxDecorations),
      cards: data.get(#cards, or: $value.cards),
      snackbars: data.get(#snackbars, or: $value.snackbars),
      badges: data.get(#badges, or: $value.badges),
      appbars: data.get(#appbars, or: $value.appbars),
      bottomAppbars: data.get(#bottomAppbars, or: $value.bottomAppbars),
      dropdowns: data.get(#dropdowns, or: $value.dropdowns),
      chips: data.get(#chips, or: $value.chips),
      dialogs: data.get(#dialogs, or: $value.dialogs),
      popupMenus: data.get(#popupMenus, or: $value.popupMenus),
      sliders: data.get(#sliders, or: $value.sliders),
      scrollbars: data.get(#scrollbars, or: $value.scrollbars),
      tooltips: data.get(#tooltips, or: $value.tooltips),
      navigationRails: data.get(#navigationRails, or: $value.navigationRails),
      checkboxes: data.get(#checkboxes, or: $value.checkboxes),
      radios: data.get(#radios, or: $value.radios),
      switches: data.get(#switches, or: $value.switches),
      drawers: data.get(#drawers, or: $value.drawers),
      listTiles: data.get(#listTiles, or: $value.listTiles),
      menus: data.get(#menus, or: $value.menus),
      menuBars: data.get(#menuBars, or: $value.menuBars),
      navigationBars: data.get(#navigationBars, or: $value.navigationBars),
      navigationDrawers:
          data.get(#navigationDrawers, or: $value.navigationDrawers),
      progressIndicators:
          data.get(#progressIndicators, or: $value.progressIndicators),
      searchBars: data.get(#searchBars, or: $value.searchBars),
      searchViews: data.get(#searchViews, or: $value.searchViews),
      tabBars: data.get(#tabBars, or: $value.tabBars));

  @override
  ComponentThemesModelCopyWith<$R2, ComponentThemesModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ComponentThemesModelCopyWithImpl($value, $cast, t);
}
