import "package:contacts/utils/loggers.dart";
import "package:flutter/foundation.dart";
import "package:flutter_contacts/flutter_contacts.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

/// [ContactsDataSource] is a wrapper class for [rootBundle] which implements [DataSource]
class ContactsDataSource extends DataSource<Contact, BasicSearchQueryModel> {
  // List<ContactListener> listeners = [];

// typedef ContactListener = void Function();

  // Future<ContactListener?> addContactsListener(ContactListener listener) async {
  //   // Listen to contact database changes
  //   listeners.add(listener);
  //   FlutterContacts.addListener(listener);
  //   return listener;
  // }

  // void removeListener(ContactListener listener) {
  //   listeners.remove(listener);
  //   FlutterContacts.removeListener(listener);
  // }

  // GET

  @override
  Future<Pair<RequestResponse, Contact?>> get(String id) async {
    await FlutterContacts.requestPermission();
    final contact = await FlutterContacts.getContact(id);
    if (contact == null) {
      AppLogger.print(
        "Contact not found ($id)",
        [ContactsLoggers.contacts],
        type: LoggerType.error,
      );
      return const Pair(RequestResponse.failure, null);
    }
    return Pair(RequestResponse.success, contact);
  }

  Future<Contact?> getExternally() async {
    await FlutterContacts.requestPermission();
    final contact = await FlutterContacts.openExternalPick();
    return contact;
  }

  @override
  Future<Pair<RequestResponse, List<Contact?>>> getAll({
    bool withProperties = false,
    bool withThumbnail = false,
    bool withPhoto = false,
    bool withGroups = false,
    bool withAccounts = false,
    bool sorted = true,
    bool deduplicateProperties = true,
  }) async {
    if (await FlutterContacts.requestPermission()) {
      return Pair(
        RequestResponse.success,
        await FlutterContacts.getContacts(
          withProperties: withProperties,
          withThumbnail: withThumbnail,
          withPhoto: withPhoto,
          withGroups: withGroups,
          withAccounts: withAccounts,
          sorted: sorted,
          deduplicateProperties: deduplicateProperties,
        ),
      );
    } else {
      AppLogger.print(
        'Request Permission returned false in "getAll"',
        [ContactsLoggers.contacts],
        type: LoggerType.error,
      );
      return const Pair(RequestResponse.failure, []);
    }
  }

  //
  // ADD
  //

  Future<void> addExternally() async {
    await FlutterContacts.requestPermission();
    await FlutterContacts.openExternalInsert();
  }

  @override
  Future<Pair<RequestResponse, Contact?>> add(Contact value) async {
    await FlutterContacts.requestPermission();
    final contact = await FlutterContacts.openExternalInsert();
    return Pair(RequestResponse.success, contact);
  }

  @override
  Future<RequestResponse> addAll(List<Contact> values) async {
    await FlutterContacts.requestPermission();
    await Future.forEach(
      values,
      (contact) async => FlutterContacts.insertContact(contact),
    );
    return RequestResponse.success;
  }
  //
  // UPDATE
  //

  Future<RequestResponse> updateExternally(String id) async {
    await FlutterContacts.requestPermission();
    await FlutterContacts.openExternalEdit(id);
    return RequestResponse.success;
  }

  /// [update] update the contact with the given id
  @override
  Future<RequestResponse> update(String id, Contact contact) async {
    await FlutterContacts.requestPermission();
    assert(
      contact.id == id,
      "The id of the contact to update must be the same as the id in the contact",
    );
    await contact.update();
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> updateAll(Map<String, Contact> values) async {
    await FlutterContacts.requestPermission();
    await Future.forEach(values.entries, (entry) async {
      assert(
        entry.key == entry.value.id,
        "The id of the contact to update must be the same as the id in the contact",
      );
      await entry.value.update();
    });
    return RequestResponse.success;
  }

  //
  // DELETE
  //

  @override
  Future<RequestResponse> delete(String id, {Contact? contact}) async {
    await FlutterContacts.requestPermission();
    final contactToDelete = contact ?? await FlutterContacts.getContact(id);
    if (contactToDelete == null) {
      AppLogger.print(
        "Contact not found to delete ($id)",
        [ContactsLoggers.contacts],
        type: LoggerType.error,
      );
      return RequestResponse.failure;
    }
    contactToDelete.delete();
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> deleteAll() async {
    throw UnimplementedError(
      "deleteAll is not implemented in ContactsDataSource",
    );
  }

  @override
  Future<Pair<RequestResponse, Contact?>> search(
    BasicSearchQueryModel query,
  ) async {
    final result = await FlutterContacts.openExternalPick();
    if (result == null) {
      return const Pair(RequestResponse.failure, null);
    }
    return Pair(RequestResponse.success, result);
  }

  @override
  Future<Pair<RequestResponse, List<Contact?>>> searchAll(
    BasicSearchQueryModel query,
  ) async {
    await FlutterContacts.requestPermission();
    final allContacts = await getAll();
    final result = allContacts.second
        .where(
          (element) =>
              "${element?.name.first}${element?.name.last}${element?.name.nickname}"
                  .contains(query.searchTerm),
        )
        .toList();
    if (result.isEmpty) {
      return const Pair(RequestResponse.failure, []);
    }
    return Pair(RequestResponse.success, result);
  }

  ///
  ///
  ///
  ///
  ///
}

class ContactManager {
  Future<void> addContact(Contact newContact) async {
    // // Insert new contact
    // final newContact = Contact()
    //   ..name.first = "John"
    //   ..name.last = "Smith"
    //   ..phones = [Phone("555-123-4567")];
    await FlutterContacts.requestPermission();
    await newContact.insert();
  }

  Future<void> updateContact(Contact contact) async {
    // Update contact
    await contact.update();
  }

  Future<void> deleteContact(Contact contact) async {
    // Delete contact
    await contact.delete();
  }

  String createVCard(Contact contact) {
    // Export contact to vCard
    final vCard = contact.toVCard();
    debugPrint(vCard);
    return vCard;
  }

  Future<void> createContactFromVCard(String vCard) async {
    // Import contact from vCard
    // contact = Contact.fromVCard("BEGIN:VCARD\n"
    //     "VERSION:3.0\n"
    //     "N:;Joe;;;\n"
    //     "TEL;TYPE=HOME:123456\n"
    //     "END:VCARD");
    final contact = Contact.fromVCard(vCard);
    await contact.insert();
  }

  Future<Contact?> getContactFromExternalView() async {
    final contact = await FlutterContacts.openExternalPick();
    return contact;
  }

  Future<Contact?> updateContactFromExternalView(Contact contact) async {
    final updatedContact = await FlutterContacts.openExternalEdit(contact.id);
    return updatedContact;
  }

  Future<void> openContactInExternalView(Contact contact) async {
    await FlutterContacts.openExternalView(contact.id);
  }

  Future<Contact?> addContactInExternalView() async {
    final contact = await FlutterContacts.openExternalInsert();
    return contact;
  }

  // Future<List<Contact>?> getContacts({
  //   bool withProperties = false,
  //   bool withThumbnail = false,
  //   bool withPhoto = false,
  //   bool withGroups = false,
  //   bool withAccounts = false,
  //   bool sorted = true,
  //   bool deduplicateProperties = true,
  // }) async {
  //   if (await FlutterContacts.requestPermission()) {
  //     return FlutterContacts.getContacts(
  //       withProperties: withProperties,
  //       withThumbnail: withThumbnail,
  //       withPhoto: withPhoto,
  //       withGroups: withGroups,
  //       withAccounts: withAccounts,
  //       sorted: sorted,
  //       deduplicateProperties: deduplicateProperties,
  //     );
  //   }
  //   return null;
  // }

  // // Create a new group (iOS) / label (Android).
  // await FlutterContacts.insertGroup(Group("", "Coworkers"));
}
