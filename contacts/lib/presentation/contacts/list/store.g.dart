// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContactssStore on _ContactssStore, Store {
  late final _$contactssAtom =
      Atom(name: '_ContactssStore.contactss', context: context);

  @override
  ObservableList<Contact?> get contactss {
    _$contactssAtom.reportRead();
    return super.contactss;
  }

  @override
  set contactss(ObservableList<Contact?> value) {
    _$contactssAtom.reportWrite(value, super.contactss, () {
      super.contactss = value;
    });
  }

  late final _$loadContactsAsyncAction =
      AsyncAction('_ContactssStore.loadContacts', context: context);

  @override
  Future<void> loadContacts() {
    return _$loadContactsAsyncAction.run(() => super.loadContacts());
  }

  @override
  String toString() {
    return '''
contactss: ${contactss}
    ''';
  }
}
