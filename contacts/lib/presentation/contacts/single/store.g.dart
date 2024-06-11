// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContactStore on _ContactStore, Store {
  late final _$currentContactAtom =
      Atom(name: '_ContactStore.currentContact', context: context);

  @override
  Contact? get currentContact {
    _$currentContactAtom.reportRead();
    return super.currentContact;
  }

  @override
  set currentContact(Contact? value) {
    _$currentContactAtom.reportWrite(value, super.currentContact, () {
      super.currentContact = value;
    });
  }

  @override
  String toString() {
    return '''
currentContact: ${currentContact}
    ''';
  }
}
