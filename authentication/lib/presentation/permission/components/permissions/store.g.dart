// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PermissionsFormFieldStore on _PermissionsFormFieldStore, Store {
  late final _$isHoveredAtom =
      Atom(name: '_PermissionsFormFieldStore.isHovered', context: context);

  @override
  bool get isHovered {
    _$isHoveredAtom.reportRead();
    return super.isHovered;
  }

  @override
  set isHovered(bool value) {
    _$isHoveredAtom.reportWrite(value, super.isHovered, () {
      super.isHovered = value;
    });
  }

  late final _$_PermissionsFormFieldStoreActionController =
      ActionController(name: '_PermissionsFormFieldStore', context: context);

  @override
  void setHovered(bool value) {
    final _$actionInfo = _$_PermissionsFormFieldStoreActionController
        .startAction(name: '_PermissionsFormFieldStore.setHovered');
    try {
      return super.setHovered(value);
    } finally {
      _$_PermissionsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isHovered: ${isHovered}
    ''';
  }
}
