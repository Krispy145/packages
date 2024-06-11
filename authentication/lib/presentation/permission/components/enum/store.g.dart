// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PermissionsFormFieldStore on _PermissionsFormFieldStore, Store {
  late final _$selectedPermissionAtom = Atom(
      name: '_PermissionsFormFieldStore.selectedPermission', context: context);

  @override
  UserPermissionsModel? get selectedPermission {
    _$selectedPermissionAtom.reportRead();
    return super.selectedPermission;
  }

  @override
  set selectedPermission(UserPermissionsModel? value) {
    _$selectedPermissionAtom.reportWrite(value, super.selectedPermission, () {
      super.selectedPermission = value;
    });
  }

  @override
  String toString() {
    return '''
selectedPermission: ${selectedPermission}
    ''';
  }
}
