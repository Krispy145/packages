// ignore_for_file: unused_element

import "package:flutter_contacts/flutter_contacts.dart";
import "package:mobx/mobx.dart";

import "../list/store.dart";

part "store.g.dart";

/// [ContactStore] is a class that uses [_ContactStore] to manage state of the Contact feature.
class ContactStore = _ContactStore with _$ContactStore;

/// [_ContactStore] is a class that manages the state of the Contact feature.
abstract class _ContactStore extends ContactsStore with Store {
  final String? id;

  /// [_ContactStore] constructor.
  _ContactStore({
    this.id,
    Contact? initialContact,
  }) {
    _loadContact(initialContact);
  }

  /// [currentContact] is an observable list of [Contact]s.
  @observable
  Contact? currentContact;

  void _loadContact(Contact? initialContact) {
    if (initialContact == null && id != null) {
      setLoading();
      repository.getContact(id!).then((value) {
        currentContact = value.second;
      });
    } else {
      currentContact = initialContact;
    }
    if (currentContact != null) {
      setLoaded();
    } else {
      setEmpty();
    }
  }
}
