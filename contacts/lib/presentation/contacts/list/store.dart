import "package:flutter_contacts/flutter_contacts.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

import "/domain/repositories/contacts.repository.dart";

part "store.g.dart";

/// [ContactssStore] is a class that uses [_ContactssStore] to manage state of the contacts feature.
class ContactssStore = _ContactssStore with _$ContactssStore;

/// [_ContactssStore] is a class that manages the state of the contacts feature.
abstract class _ContactssStore extends LoadStateStore with Store {
  /// [repository] is an instance of [ContactsRepository].
  final ContactsRepository repository = ContactsRepository();

  /// [contacts] is an observable list of [Contact]s.
  @observable
  ObservableList<Contact?> contactss = ObservableList<Contact?>();

  /// [loadContacts] loads all [Contact]s from the data source.
  @action
  Future<void> loadContacts() async {
    try {
      setLoading();
      final loadedContactss = await repository.getAllContacts();
      if (loadedContactss.isNotEmpty) {
        contactss
          ..clear()
          ..addAll(loadedContactss);
        setLoaded();
      } else {
        setEmpty();
      }
    } catch (e) {
      setError();
    }
  }
}
