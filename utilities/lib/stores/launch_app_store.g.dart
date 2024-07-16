// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppLauncherStore on _AppLauncherStore, Store {
  late final _$isAppInstalledAtom =
      Atom(name: '_AppLauncherStore.isAppInstalled', context: context);

  @override
  bool get isAppInstalled {
    _$isAppInstalledAtom.reportRead();
    return super.isAppInstalled;
  }

  @override
  set isAppInstalled(bool value) {
    _$isAppInstalledAtom.reportWrite(value, super.isAppInstalled, () {
      super.isAppInstalled = value;
    });
  }

  late final _$appIdentifierAtom =
      Atom(name: '_AppLauncherStore.appIdentifier', context: context);

  @override
  AppIdentifier? get appIdentifier {
    _$appIdentifierAtom.reportRead();
    return super.appIdentifier;
  }

  @override
  set appIdentifier(AppIdentifier? value) {
    _$appIdentifierAtom.reportWrite(value, super.appIdentifier, () {
      super.appIdentifier = value;
    });
  }

  late final _$checkIsAppInstalledAsyncAction =
      AsyncAction('_AppLauncherStore.checkIsAppInstalled', context: context);

  @override
  Future<bool> checkIsAppInstalled({required AppIdentifier identifier}) {
    return _$checkIsAppInstalledAsyncAction
        .run(() => super.checkIsAppInstalled(identifier: identifier));
  }

  late final _$launchAppAsyncAction =
      AsyncAction('_AppLauncherStore.launchApp', context: context);

  @override
  Future<void> launchApp({required AppIdentifier identifier}) {
    return _$launchAppAsyncAction
        .run(() => super.launchApp(identifier: identifier));
  }

  @override
  String toString() {
    return '''
isAppInstalled: ${isAppInstalled},
appIdentifier: ${appIdentifier}
    ''';
  }
}
