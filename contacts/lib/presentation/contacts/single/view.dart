import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_contacts/contact.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "store.dart";

/// [ContactsView] of the app.
@RoutePage()
class ContactsView extends StatelessWidget {
  final String? id;
  final Contact? contactsModel;

  /// [ContactsView] constructor.
  ContactsView({super.key, this.id, this.contactsModel}) {
    store = ContactsStore(id: id, initialContact: contactsModel);
  }

  /// [store] is an instance of [ContactsStore], used in the [LoadStateBuilder].
  /// initialized in the constructor.
  late final ContactsStore store;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          return Center(
            child: Text(
              store.isEmpty ? "Empty Contacts" : "store.currentContacts?.name",
              style: context.textTheme.headlineMedium,
            ),
          );
        },
      ),
    );
  }
}
