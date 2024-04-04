// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeStateStore on ThemeStateBaseStore, Store {
  Computed<bool>? _$isDarkComputed;

  @override
  bool get isDark => (_$isDarkComputed ??= Computed<bool>(() => super.isDark,
          name: 'ThemeStateBaseStore.isDark'))
      .value;
  Computed<bool>? _$isLightComputed;

  @override
  bool get isLight => (_$isLightComputed ??= Computed<bool>(() => super.isLight,
          name: 'ThemeStateBaseStore.isLight'))
      .value;
  Computed<ColorModel?>? _$currentColorModelComputed;

  @override
  ColorModel? get currentColorModel => (_$currentColorModelComputed ??=
          Computed<ColorModel?>(() => super.currentColorModel,
              name: 'ThemeStateBaseStore.currentColorModel'))
      .value;
  Computed<ThemeData>? _$lightThemeComputed;

  @override
  ThemeData get lightTheme =>
      (_$lightThemeComputed ??= Computed<ThemeData>(() => super.lightTheme,
              name: 'ThemeStateBaseStore.lightTheme'))
          .value;
  Computed<ThemeData>? _$darkThemeComputed;

  @override
  ThemeData get darkTheme =>
      (_$darkThemeComputed ??= Computed<ThemeData>(() => super.darkTheme,
              name: 'ThemeStateBaseStore.darkTheme'))
          .value;

  late final _$baseThemeModelAtom =
      Atom(name: 'ThemeStateBaseStore.baseThemeModel', context: context);

  @override
  BaseThemeModel get baseThemeModel {
    _$baseThemeModelAtom.reportRead();
    return super.baseThemeModel;
  }

  bool _baseThemeModelIsInitialized = false;

  @override
  set baseThemeModel(BaseThemeModel value) {
    _$baseThemeModelAtom.reportWrite(
        value, _baseThemeModelIsInitialized ? super.baseThemeModel : null, () {
      super.baseThemeModel = value;
      _baseThemeModelIsInitialized = true;
    });
  }

  late final _$componentThemesModelAtom =
      Atom(name: 'ThemeStateBaseStore.componentThemesModel', context: context);

  @override
  ComponentThemesModel? get componentThemesModel {
    _$componentThemesModelAtom.reportRead();
    return super.componentThemesModel;
  }

  @override
  set componentThemesModel(ComponentThemesModel? value) {
    _$componentThemesModelAtom.reportWrite(value, super.componentThemesModel,
        () {
      super.componentThemesModel = value;
    });
  }

  late final _$currentThemeModeAtom =
      Atom(name: 'ThemeStateBaseStore.currentThemeMode', context: context);

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

  late final _$styleTypeAtom =
      Atom(name: 'ThemeStateBaseStore.styleType', context: context);

  @override
  String get styleType {
    _$styleTypeAtom.reportRead();
    return super.styleType;
  }

  @override
  set styleType(String value) {
    _$styleTypeAtom.reportWrite(value, super.styleType, () {
      super.styleType = value;
    });
  }

  late final _$reloadThemeModelAsyncAction =
      AsyncAction('ThemeStateBaseStore.reloadThemeModel', context: context);

  @override
  Future<void> reloadThemeModel() {
    return _$reloadThemeModelAsyncAction.run(() => super.reloadThemeModel());
  }

  late final _$ThemeStateBaseStoreActionController =
      ActionController(name: 'ThemeStateBaseStore', context: context);

  @override
  void changeBaseThemeModel(BaseThemeModel model) {
    final _$actionInfo = _$ThemeStateBaseStoreActionController.startAction(
        name: 'ThemeStateBaseStore.changeBaseThemeModel');
    try {
      return super.changeBaseThemeModel(model);
    } finally {
      _$ThemeStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeComponentThemesModel(ComponentThemesModel model) {
    final _$actionInfo = _$ThemeStateBaseStoreActionController.startAction(
        name: 'ThemeStateBaseStore.changeComponentThemesModel');
    try {
      return super.changeComponentThemesModel(model);
    } finally {
      _$ThemeStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStyleType(String newStyleType) {
    final _$actionInfo = _$ThemeStateBaseStoreActionController.startAction(
        name: 'ThemeStateBaseStore.setStyleType');
    try {
      return super.setStyleType(newStyleType);
    } finally {
      _$ThemeStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleThemeMode() {
    final _$actionInfo = _$ThemeStateBaseStoreActionController.startAction(
        name: 'ThemeStateBaseStore.toggleThemeMode');
    try {
      return super.toggleThemeMode();
    } finally {
      _$ThemeStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setThemeMode(ThemeMode newThemeMode) {
    final _$actionInfo = _$ThemeStateBaseStoreActionController.startAction(
        name: 'ThemeStateBaseStore.setThemeMode');
    try {
      return super.setThemeMode(newThemeMode);
    } finally {
      _$ThemeStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
baseThemeModel: ${baseThemeModel},
componentThemesModel: ${componentThemesModel},
currentThemeMode: ${currentThemeMode},
styleType: ${styleType},
isDark: ${isDark},
isLight: ${isLight},
currentColorModel: ${currentColorModel},
lightTheme: ${lightTheme},
darkTheme: ${darkTheme}
    ''';
  }
}
