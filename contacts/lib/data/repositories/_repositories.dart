import 'contacts.repository.dart';

///END OF IMPORTS

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [contacts] is the [ContactsDataRepository] instance.
  final ContactsDataRepository contacts = ContactsDataRepository();

  ///END OF REPOSITORIES
}
