// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StyleTypeThemeStore on StyleTypeBaseStore, Store {
  Computed<BaseThemeModel>? _$baseThemeModelComputed;

  @override
  BaseThemeModel get baseThemeModel => (_$baseThemeModelComputed ??=
          Computed<BaseThemeModel>(() => super.baseThemeModel,
              name: 'StyleTypeBaseStore.baseThemeModel'))
      .value;
  Computed<ComponentThemesModel?>? _$componentThemesModelComputed;

  @override
  ComponentThemesModel? get componentThemesModel =>
      (_$componentThemesModelComputed ??= Computed<ComponentThemesModel?>(
              () => super.componentThemesModel,
              name: 'StyleTypeBaseStore.componentThemesModel'))
          .value;
  Computed<bool>? _$isDarkComputed;

  @override
  bool get isDark => (_$isDarkComputed ??=
          Computed<bool>(() => super.isDark, name: 'StyleTypeBaseStore.isDark'))
      .value;
  Computed<bool>? _$isLightComputed;

  @override
  bool get isLight => (_$isLightComputed ??= Computed<bool>(() => super.isLight,
          name: 'StyleTypeBaseStore.isLight'))
      .value;
  Computed<ColorModel?>? _$currentColorModelComputed;

  @override
  ColorModel? get currentColorModel => (_$currentColorModelComputed ??=
          Computed<ColorModel?>(() => super.currentColorModel,
              name: 'StyleTypeBaseStore.currentColorModel'))
      .value;
  Computed<ThemeData>? _$currentThemeComputed;

  @override
  ThemeData get currentTheme =>
      (_$currentThemeComputed ??= Computed<ThemeData>(() => super.currentTheme,
              name: 'StyleTypeBaseStore.currentTheme'))
          .value;
  Computed<ThemeData>? _$lightThemeComputed;

  @override
  ThemeData get lightTheme =>
      (_$lightThemeComputed ??= Computed<ThemeData>(() => super.lightTheme,
              name: 'StyleTypeBaseStore.lightTheme'))
          .value;
  Computed<ThemeData>? _$darkThemeComputed;

  @override
  ThemeData get darkTheme =>
      (_$darkThemeComputed ??= Computed<ThemeData>(() => super.darkTheme,
              name: 'StyleTypeBaseStore.darkTheme'))
          .value;

  late final _$currentThemeModeAtom =
      Atom(name: 'StyleTypeBaseStore.currentThemeMode', context: context);

  @override
  ThemeMode get currentThemeMode {
    _$currentThemeModeAtom.reportRead();
    return super.currentThemeMode;
  }

  @override
  set currentThemeMode(ThemeMode value) {
    _$currentThemeModeAtom.reportWrite(value, super.currentThemeMode, () {
      super.currentThemeMode = value;
    });
  }

  late final _$StyleTypeBaseStoreActionController =
      ActionController(name: 'StyleTypeBaseStore', context: context);

  @override
  void setStyleType(String newStyleType) {
    final _$actionInfo = _$StyleTypeBaseStoreActionController.startAction(
        name: 'StyleTypeBaseStore.setStyleType');
    try {
      return super.setStyleType(newStyleType);
    } finally {
      _$StyleTypeBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toggleThemeMode() {
    final _$actionInfo = _$StyleTypeBaseStoreActionController.startAction(
        name: 'StyleTypeBaseStore.toggleThemeMode');
    try {
      return super.toggleThemeMode();
    } finally {
      _$StyleTypeBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setThemeMode(ThemeMode newThemeMode) {
    final _$actionInfo = _$StyleTypeBaseStoreActionController.startAction(
        name: 'StyleTypeBaseStore.setThemeMode');
    try {
      return super.setThemeMode(newThemeMode);
    } finally {
      _$StyleTypeBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentThemeMode: ${currentThemeMode},
baseThemeModel: ${baseThemeModel},
componentThemesModel: ${componentThemesModel},
isDark: ${isDark},
isLight: ${isLight},
currentColorModel: ${currentColorModel},
currentTheme: ${currentTheme},
lightTheme: ${lightTheme},
darkTheme: ${darkTheme}
    ''';
  }
}
