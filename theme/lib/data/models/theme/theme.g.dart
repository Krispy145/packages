// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComponentThemesModelImpl _$$ComponentThemesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ComponentThemesModelImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      elevatedButtons: (json['elevatedButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      filledButtons: (json['filledButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      outlinedButtons: (json['outlinedButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      textButtons: (json['textButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      toggleButtons: (json['toggleButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ToggleButtonModel.fromJson(e as Map<String, dynamic>)),
      ),
      iconButtons: (json['iconButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      floatingActionButtons:
          (json['floatingActionButtons'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, FloatingActionButtonModel.fromJson(e as Map<String, dynamic>)),
      ),
      menuButtons: (json['menuButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      segmentedButtons:
          (json['segmentedButtons'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      inputDecorations:
          (json['inputDecorations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, InputDecorationModel.fromJson(e as Map<String, dynamic>)),
      ),
      boxDecorations: (json['boxDecorations'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, BoxDecorationModel.fromJson(e as Map<String, dynamic>)),
      ),
      cards: (json['cards'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, CardModel.fromJson(e as Map<String, dynamic>)),
      ),
      snackbars: (json['snackbars'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, SnackbarModel.fromJson(e as Map<String, dynamic>)),
      ),
      badges: (json['badges'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, BadgeModel.fromJson(e as Map<String, dynamic>)),
      ),
      appbars: (json['appbars'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, AppbarModel.fromJson(e as Map<String, dynamic>)),
      ),
      bottomAppbars: (json['bottomAppbars'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, BottomAppbarModel.fromJson(e as Map<String, dynamic>)),
      ),
      dropdowns: (json['dropdowns'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, DropdownModel.fromJson(e as Map<String, dynamic>)),
      ),
      chips: (json['chips'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, ChipModel.fromJson(e as Map<String, dynamic>)),
      ),
      dialogs: (json['dialogs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, DialogModel.fromJson(e as Map<String, dynamic>)),
      ),
      popupMenus: (json['popupMenus'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, PopupMenuModel.fromJson(e as Map<String, dynamic>)),
      ),
      sliders: (json['sliders'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, SliderModel.fromJson(e as Map<String, dynamic>)),
      ),
      scrollbars: (json['scrollbars'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ScrollbarModel.fromJson(e as Map<String, dynamic>)),
      ),
      tooltips: (json['tooltips'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, TooltipModel.fromJson(e as Map<String, dynamic>)),
      ),
      navigationRails: (json['navigationRails'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, NavigationRailModel.fromJson(e as Map<String, dynamic>)),
      ),
      checkboxes: (json['checkboxes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, CheckboxModel.fromJson(e as Map<String, dynamic>)),
      ),
      radios: (json['radios'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, RadioModel.fromJson(e as Map<String, dynamic>)),
      ),
      switches: (json['switches'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, SwitchModel.fromJson(e as Map<String, dynamic>)),
      ),
      drawers: (json['drawers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, DrawerModel.fromJson(e as Map<String, dynamic>)),
      ),
      listTiles: (json['listTiles'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ListTileModel.fromJson(e as Map<String, dynamic>)),
      ),
      menus: (json['menus'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MenuModel.fromJson(e as Map<String, dynamic>)),
      ),
      menuBars: (json['menuBars'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MenuBarModel.fromJson(e as Map<String, dynamic>)),
      ),
      navigationBars: (json['navigationBars'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NavigationBarModel.fromJson(e as Map<String, dynamic>)),
      ),
      navigationDrawers:
          (json['navigationDrawers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, NavigationDrawerModel.fromJson(e as Map<String, dynamic>)),
      ),
      progressIndicators:
          (json['progressIndicators'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, ProgressIndicatorModel.fromJson(e as Map<String, dynamic>)),
      ),
      searchBars: (json['searchBars'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, SearchBarModel.fromJson(e as Map<String, dynamic>)),
      ),
      searchViews: (json['searchViews'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, SearchViewModel.fromJson(e as Map<String, dynamic>)),
      ),
      tabBars: (json['tabBars'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, TabBarModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$ComponentThemesModelImplToJson(
        _$ComponentThemesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'elevatedButtons':
          instance.elevatedButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'filledButtons':
          instance.filledButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'outlinedButtons':
          instance.outlinedButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'textButtons':
          instance.textButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'toggleButtons':
          instance.toggleButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'iconButtons':
          instance.iconButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'floatingActionButtons': instance.floatingActionButtons
          ?.map((k, e) => MapEntry(k, e.toJson())),
      'menuButtons':
          instance.menuButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'segmentedButtons':
          instance.segmentedButtons?.map((k, e) => MapEntry(k, e.toJson())),
      'inputDecorations':
          instance.inputDecorations?.map((k, e) => MapEntry(k, e.toJson())),
      'boxDecorations':
          instance.boxDecorations?.map((k, e) => MapEntry(k, e.toJson())),
      'cards': instance.cards?.map((k, e) => MapEntry(k, e.toJson())),
      'snackbars': instance.snackbars?.map((k, e) => MapEntry(k, e.toJson())),
      'badges': instance.badges?.map((k, e) => MapEntry(k, e.toJson())),
      'appbars': instance.appbars?.map((k, e) => MapEntry(k, e.toJson())),
      'bottomAppbars':
          instance.bottomAppbars?.map((k, e) => MapEntry(k, e.toJson())),
      'dropdowns': instance.dropdowns?.map((k, e) => MapEntry(k, e.toJson())),
      'chips': instance.chips?.map((k, e) => MapEntry(k, e.toJson())),
      'dialogs': instance.dialogs?.map((k, e) => MapEntry(k, e.toJson())),
      'popupMenus': instance.popupMenus?.map((k, e) => MapEntry(k, e.toJson())),
      'sliders': instance.sliders?.map((k, e) => MapEntry(k, e.toJson())),
      'scrollbars': instance.scrollbars?.map((k, e) => MapEntry(k, e.toJson())),
      'tooltips': instance.tooltips?.map((k, e) => MapEntry(k, e.toJson())),
      'navigationRails':
          instance.navigationRails?.map((k, e) => MapEntry(k, e.toJson())),
      'checkboxes': instance.checkboxes?.map((k, e) => MapEntry(k, e.toJson())),
      'radios': instance.radios?.map((k, e) => MapEntry(k, e.toJson())),
      'switches': instance.switches?.map((k, e) => MapEntry(k, e.toJson())),
      'drawers': instance.drawers?.map((k, e) => MapEntry(k, e.toJson())),
      'listTiles': instance.listTiles?.map((k, e) => MapEntry(k, e.toJson())),
      'menus': instance.menus?.map((k, e) => MapEntry(k, e.toJson())),
      'menuBars': instance.menuBars?.map((k, e) => MapEntry(k, e.toJson())),
      'navigationBars':
          instance.navigationBars?.map((k, e) => MapEntry(k, e.toJson())),
      'navigationDrawers':
          instance.navigationDrawers?.map((k, e) => MapEntry(k, e.toJson())),
      'progressIndicators':
          instance.progressIndicators?.map((k, e) => MapEntry(k, e.toJson())),
      'searchBars': instance.searchBars?.map((k, e) => MapEntry(k, e.toJson())),
      'searchViews':
          instance.searchViews?.map((k, e) => MapEntry(k, e.toJson())),
      'tabBars': instance.tabBars?.map((k, e) => MapEntry(k, e.toJson())),
    };

_$BaseThemeModelImpl _$$BaseThemeModelImplFromJson(Map<String, dynamic> json) =>
    _$BaseThemeModelImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      colors: (json['colors'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ColorSchemes.fromJson(e as Map<String, dynamic>)),
      ),
      textStyles: (json['textStyles'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, TextTypes.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$BaseThemeModelImplToJson(
        _$BaseThemeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'colors': instance.colors.map((k, e) => MapEntry(k, e.toJson())),
      'textStyles': instance.textStyles?.map((k, e) => MapEntry(k, e.toJson())),
    };
