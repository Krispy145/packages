import "package:contacts/data/sources/contacts/contacts.source.dart";
import "package:flutter_contacts/flutter_contacts.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [ContactsDataRepository] is a class that defines the basic CRUD operations for the [Contact] entity.
class ContactsDataRepository {
  /// [getAllContacts] returns a list of [Contact]s.
  Future<Pair<RequestResponse, List<Contact?>>> getAllContacts({
    required ContactsDataSource source,
  }) async {
    return source.getAll();
  }

  /// [getContact] returns a single [Contact].
  Future<Pair<RequestResponse, Contact?>> getContact({
    required ContactsDataSource source,
    required String id,
  }) async {
    return source.get(id);
  }

  /// [addAllContacts] adds all [Contact]s to the data source.
  Future<RequestResponse> addAllContacts({
    required ContactsDataSource source,
    required List<Contact> contactsModels,
  }) async {
    return source.addAll(contactsModels);
  }

  /// [additContact] addits a single [Contact] to the data source.
  Future<RequestResponse> additContact({
    required ContactsDataSource source,
    required Contact contactsModel,
  }) async {
    return source.update(contactsModel.id, contactsModel);
  }

  /// [deleteContact] deletes a single [Contact] from the data source.
  Future<RequestResponse> deleteContact({
    required ContactsDataSource source,
    required String id,
  }) async {
    return source.delete(id);
  }
}
