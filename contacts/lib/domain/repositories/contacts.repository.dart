import "package:contacts/data/sources/contacts/contacts.source.dart";
import "package:flutter_contacts/contact.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

import "/data/repositories/_repositories.dart";
import "/data/repositories/contacts.repository.dart";

/// [ContactsRepository] is a class that defines the basic CRUD operations for the [Contact] entity.
class ContactsRepository {
  final ContactsDataRepository _contactsDataRepository = DataRepositories.instance.contacts;

  /// [ContactsRepository] constructor.
  ContactsRepository();

  //* Contact Data Source Type
  final _source = ContactsDataSource();

  /// [getAllContacts] fetches all [Contact]s from the data source.
  Future<Pair<RequestResponse, List<Contact?>>> getAllContacts() {
    return _contactsDataRepository.getAllContacts(source: _source);
  }

  /// [getContact] fetches a single [Contact] from the data source.
  Future<Pair<RequestResponse, Contact?>> getContact(String id) {
    return _contactsDataRepository.getContact(
      source: _source,
      id: id,
    );
  }

  /// [additContact] addits a single [Contact] to the data source.
  Future<void> additContact(Contact contactsModel) {
    return _contactsDataRepository.additContact(
      source: _source,
      contactsModel: contactsModel,
    );
  }

  /// [addAllContacts] adds all [Contact]s to the data source.
  Future<void> addAllContacts(List<Contact> contactsModels) {
    return _contactsDataRepository.addAllContacts(
      source: _source,
      contactsModels: contactsModels,
    );
  }

  /// [deleteContact] deletes a single [Contact] from the data source.
  Future<void> deleteContact(String id) {
    return _contactsDataRepository.deleteContact(
      source: _source,
      id: id,
    );
  }
}
