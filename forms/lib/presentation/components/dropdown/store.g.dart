// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DropdownFormFieldStore<T> on _DropdownFormFieldStore<T>, Store {
  late final _$selectedItemAtom =
      Atom(name: '_DropdownFormFieldStore.selectedItem', context: context);

  @override
  T? get selectedItem {
    _$selectedItemAtom.reportRead();
    return super.selectedItem;
  }

  @override
  set selectedItem(T? value) {
    _$selectedItemAtom.reportWrite(value, super.selectedItem, () {
      super.selectedItem = value;
    });
  }

  @override
  String toString() {
    return '''
selectedItem: ${selectedItem}
    ''';
  }
}
