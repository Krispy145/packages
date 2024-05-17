// ignore_for_file: unused_element

import 'package:flutter_contacts/flutter_contacts.dart';
import "package:mobx/mobx.dart";

import '../list/store.dart';

part "store.g.dart";

/// [ContactsStore] is a class that uses [_ContactsStore] to manage state of the Contacts feature.
class ContactsStore = _ContactsStore with _$ContactsStore;

/// [_ContactsStore] is a class that manages the state of the Contacts feature.
abstract class _ContactsStore extends ContactssStore with Store {
  final String? id;

  /// [_ContactsStore] constructor.
  _ContactsStore({
    this.id,
    Contact? initialContact,
  }) {
    _loadContacts(initialContact);
  }

  /// [currentContacts] is an observable list of [Contact]s.
  @observable
  Contact? currentContacts;

  void _loadContacts(Contact? initialContact) {
    if (initialContact == null && id != null) {
      setLoading();
      repository.getContact(id!).then((value) {
        currentContacts = value;
      });
    } else {
      currentContacts = initialContact;
    }
    if (currentContacts != null) {
      setLoaded();
    } else {
      setEmpty();
    }
  }
}
