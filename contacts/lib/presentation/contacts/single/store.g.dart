// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContactsStore on _ContactsStore, Store {
  late final _$currentContactsAtom =
      Atom(name: '_ContactsStore.currentContacts', context: context);

  @override
  Contact? get currentContacts {
    _$currentContactsAtom.reportRead();
    return super.currentContacts;
  }

  @override
  set currentContacts(Contact? value) {
    _$currentContactsAtom.reportWrite(value, super.currentContacts, () {
      super.currentContacts = value;
    });
  }

  @override
  String toString() {
    return '''
currentContacts: ${currentContacts}
    ''';
  }
}
