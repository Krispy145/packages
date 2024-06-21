import "package:auto_route/auto_route.dart";
import "package:contacts/presentation/contacts/list/store.dart";
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
      emptyBuilder: (context, empty) => Center(child: Text(empty)),
      loadedBuilder: (context) => ListView.builder(
        itemCount: store.contacts.length,
        itemBuilder: (context, index) {
          final contactsModel = store.contacts[index];
          return ListTile(
            title: Text("ID: ${contactsModel?.id}"),
            subtitle: Text("Name: ${contactsModel?.name.first} ${contactsModel?.name.last}"),
          );
        },
      ),
      errorBuilder: (context, error) => Center(child: Text(error)),
    );
  }
}
