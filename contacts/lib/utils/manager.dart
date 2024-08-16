// // See installation notes below regarding AndroidManifest.xml and Info.plist
// import "package:flutter_contacts/flutter_contacts.dart";

// typedef ContactListener = void Function();

// class ContactManager {
//   List<ContactListener> listeners = [];

//   bool hasPermissions = false;

//   Future<void> requestPermissions() async {
//     hasPermissions = await FlutterContacts.requestPermission();
//   }

//   Future<Contact?> getContact(String id) async {
//     await requestPermissions();
//     return FlutterContacts.getContact(id);
//   }

//   Future<ContactListener?> addContactsListener(ContactListener listener) async {
//     // Listen to contact database changes
//     listeners.add(listener);
//     FlutterContacts.addListener(listener);
//     return listener;
//   }

//   void removeListener(ContactListener listener) {
//     listeners.remove(listener);
//     FlutterContacts.removeListener(listener);
//   }

//   void removeAllListeners() {
//     listeners
//       ..forEach(FlutterContacts.removeListener)
//       ..clear();
//   }

//   Future<void> addContact(Contact newContact) async {
//     // // Insert new contact
//     // final newContact = Contact()
//     //   ..name.first = "John"
//     //   ..name.last = "Smith"
//     //   ..phones = [Phone("555-123-4567")];
//     await requestPermissions();
//     await newContact.insert();
//   }

//   Future<void> updateContact(Contact contact) async {
//     // Update contact
//     await contact.update();
//   }

//   Future<void> deleteContact(Contact contact) async {
//     // Delete contact
//     await contact.delete();
//   }

//   String createVCard(Contact contact) {
//     // Export contact to vCard
//     final vCard = contact.toVCard();
//    debugPrint(vCard);
//     return vCard;
//   }

//   Future<void> createContactFromVCard(String vCard) async {
//     // Import contact from vCard
//     // contact = Contact.fromVCard("BEGIN:VCARD\n"
//     //     "VERSION:3.0\n"
//     //     "N:;Joe;;;\n"
//     //     "TEL;TYPE=HOME:123456\n"
//     //     "END:VCARD");
//     final contact = Contact.fromVCard(vCard);
//     await contact.insert();
//   }

//   Future<Contact?> getContactFromExternalView() async {
//     final contact = await FlutterContacts.openExternalPick();
//     return contact;
//   }

//   Future<Contact?> updateContactFromExternalView(Contact contact) async {
//     final updatedContact = await FlutterContacts.openExternalEdit(contact.id);
//     return updatedContact;
//   }

//   Future<void> openContactInExternalView(Contact contact) async {
//     await FlutterContacts.openExternalView(contact.id);
//   }

//   Future<Contact?> addContactInExternalView() async {
//     final contact = await FlutterContacts.openExternalInsert();
//     return contact;
//   }

//   Future<List<Contact>?> getContacts({
//     bool withProperties = false,
//     bool withThumbnail = false,
//     bool withPhoto = false,
//     bool withGroups = false,
//     bool withAccounts = false,
//     bool sorted = true,
//     bool deduplicateProperties = true,
//   }) async {
//     if (await FlutterContacts.requestPermission()) {
//       return FlutterContacts.getContacts(
//         withProperties: withProperties,
//         withThumbnail: withThumbnail,
//         withPhoto: withPhoto,
//         withGroups: withGroups,
//         withAccounts: withAccounts,
//         sorted: sorted,
//         deduplicateProperties: deduplicateProperties,
//       );
//     }
//     return null;
//   }

//   // // Create a new group (iOS) / label (Android).
//   // await FlutterContacts.insertGroup(Group("", "Coworkers"));
// }
