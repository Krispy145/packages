import 'youtube.repository.dart';

///END OF IMPORTS

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [youtube] is the [YoutubeDataRepository] instance.
  final YoutubeDataRepository youtube = YoutubeDataRepository();

  ///END OF REPOSITORIES
}
