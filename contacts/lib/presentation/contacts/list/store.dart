import "package:flutter_contacts/flutter_contacts.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

import "/domain/repositories/contacts.repository.dart";

part "store.g.dart";

/// [ContactsStore] is a class that uses [_ContactsStore] to manage state of the contacts feature.
class ContactsStore = _ContactsStore with _$ContactsStore;

/// [_ContactsStore] is a class that manages the state of the contacts feature.
abstract class _ContactsStore extends LoadStateStore with Store {
  /// [repository] is an instance of [ContactsRepository].
  final ContactsRepository repository = ContactsRepository();

  /// [contacts] is an observable list of [Contact]s.
  @observable
  ObservableList<Contact?> contacts = ObservableList<Contact?>();

  /// [loadContacts] loads all [Contact]s from the data source.
  @action
  Future<void> loadContacts() async {
    try {
      setLoading();
      final loadedContacts = await repository.getAllContacts();
      if (loadedContacts.second.isNotEmpty) {
        contacts
          ..clear()
          ..addAll(loadedContacts.second);
        setLoaded();
      } else {
        setEmpty();
      }
    } catch (e) {
      setError();
    }
  }
}
