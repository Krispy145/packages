import "package:auto_route/auto_route.dart";
import "package:contacts/presentation/contacts/single/store.dart";
import "package:flutter/material.dart";
import "package:utilities/widgets/load_state/builder.dart";

/// [ContactsView] of the app.
@RoutePage()
class ContactsView extends StatelessWidget {
  /// [ContactsView] constructor.
  ContactsView({super.key});

  /// [store] is an instance of [ContactsStore], used in the [LoadStateBuilder].
  final ContactsStore store = ContactsStore()..loadContacts();

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      emptyBuilder: (context) => const Center(
        child: Text("Empty contacts view."),
      ),
      loadedBuilder: (context) => ListView.builder(
        itemCount: store.contactss.length,
        itemBuilder: (context, index) {
          final contactsModel = store.contactss[index];
          return ListTile(
            title: Text("ID: ${contactsModel?.id}"),
            subtitle: Text("Name: ${contactsModel?.name.first} ${contactsModel?.name.last}"),
          );
        },
      ),
      errorBuilder: (context) => const Center(
        child: Text("Error loading contacts view."),
      ),
    );
  }
}
