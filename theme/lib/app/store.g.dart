// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeStateStore on _ThemeStateStore, Store {
  Computed<bool>? _$isDarkComputed;

  @override
  bool get isDark => (_$isDarkComputed ??=
          Computed<bool>(() => super.isDark, name: '_ThemeStateStore.isDark'))
      .value;
  Computed<bool>? _$isLightComputed;

  @override
  bool get isLight => (_$isLightComputed ??=
          Computed<bool>(() => super.isLight, name: '_ThemeStateStore.isLight'))
      .value;
  Computed<ColorModel?>? _$currentColorModelComputed;

  @override
  ColorModel? get currentColorModel => (_$currentColorModelComputed ??=
          Computed<ColorModel?>(() => super.currentColorModel,
              name: '_ThemeStateStore.currentColorModel'))
      .value;
  Computed<ThemeData>? _$lightThemeComputed;

  @override
  ThemeData get lightTheme =>
      (_$lightThemeComputed ??= Computed<ThemeData>(() => super.lightTheme,
              name: '_ThemeStateStore.lightTheme'))
          .value;
  Computed<ThemeData>? _$darkThemeComputed;

  @override
  ThemeData get darkTheme =>
      (_$darkThemeComputed ??= Computed<ThemeData>(() => super.darkTheme,
              name: '_ThemeStateStore.darkTheme'))
          .value;

  late final _$baseThemeModelAtom =
      Atom(name: '_ThemeStateStore.baseThemeModel', context: context);

  @override
  BaseThemeModel? get baseThemeModel {
    _$baseThemeModelAtom.reportRead();
    return super.baseThemeModel;
  }

  @override
  set baseThemeModel(BaseThemeModel? value) {
    _$baseThemeModelAtom.reportWrite(value, super.baseThemeModel, () {
      super.baseThemeModel = value;
    });
  }

  late final _$componentThemesModelAtom =
      Atom(name: '_ThemeStateStore.componentThemesModel', context: context);

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
      Atom(name: '_ThemeStateStore.currentThemeMode', context: context);

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
      Atom(name: '_ThemeStateStore.styleType', context: context);

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
      AsyncAction('_ThemeStateStore.reloadThemeModel', context: context);

  @override
  Future<void> reloadThemeModel() {
    return _$reloadThemeModelAsyncAction.run(() => super.reloadThemeModel());
  }

  late final _$_ThemeStateStoreActionController =
      ActionController(name: '_ThemeStateStore', context: context);

  @override
  void changeBaseThemeModel(BaseThemeModel model) {
    final _$actionInfo = _$_ThemeStateStoreActionController.startAction(
        name: '_ThemeStateStore.changeBaseThemeModel');
    try {
      return super.changeBaseThemeModel(model);
    } finally {
      _$_ThemeStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeComponentThemesModel(ComponentThemesModel model) {
    final _$actionInfo = _$_ThemeStateStoreActionController.startAction(
        name: '_ThemeStateStore.changeComponentThemesModel');
    try {
      return super.changeComponentThemesModel(model);
    } finally {
      _$_ThemeStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStyleType(String newStyleType) {
    final _$actionInfo = _$_ThemeStateStoreActionController.startAction(
        name: '_ThemeStateStore.setStyleType');
    try {
      return super.setStyleType(newStyleType);
    } finally {
      _$_ThemeStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleThemeMode() {
    final _$actionInfo = _$_ThemeStateStoreActionController.startAction(
        name: '_ThemeStateStore.toggleThemeMode');
    try {
      return super.toggleThemeMode();
    } finally {
      _$_ThemeStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setThemeMode(ThemeMode newThemeMode) {
    final _$actionInfo = _$_ThemeStateStoreActionController.startAction(
        name: '_ThemeStateStore.setThemeMode');
    try {
      return super.setThemeMode(newThemeMode);
    } finally {
      _$_ThemeStateStoreActionController.endAction(_$actionInfo);
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
