import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_contacts/contact.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "store.dart";

/// [ContactsView] of the app.
@RoutePage()
class ContactsView extends StatelessWidget {
  final String? id;
  final Contact? contactsModel;

  /// [ContactsView] constructor.
  ContactsView({super.key, this.id, this.contactsModel}) {
    store = ContactStore(id: id, initialContact: contactsModel);
  }

  /// [store] is an instance of [ContactStore], used in the [PackageLoadStateBuilder].
  /// initialized in the constructor.
  late final ContactStore store;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          return Center(
            child: Text(
              store.isEmpty ? "Empty Contacts" : "store.currentContacts?.name",
            ),
          );
        },
      ),
    );
  }
}
