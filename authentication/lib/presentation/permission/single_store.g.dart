// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PermissionStore on _PermissionStore, Store {
  late final _$currentPermissionAtom =
      Atom(name: '_PermissionStore.currentPermission', context: context);

  @override
  PermissionModel? get currentPermission {
    _$currentPermissionAtom.reportRead();
    return super.currentPermission;
  }

  @override
  set currentPermission(PermissionModel? value) {
    _$currentPermissionAtom.reportWrite(value, super.currentPermission, () {
      super.currentPermission = value;
    });
  }

  late final _$additPermissionModelAsyncAction =
      AsyncAction('_PermissionStore.additPermissionModel', context: context);

  @override
  Future<RequestResponse> additPermissionModel(
      bool isAdding, PermissionModel permissionModel) {
    return _$additPermissionModelAsyncAction
        .run(() => super.additPermissionModel(isAdding, permissionModel));
  }

  @override
  String toString() {
    return '''
currentPermission: ${currentPermission}
    ''';
  }
}
