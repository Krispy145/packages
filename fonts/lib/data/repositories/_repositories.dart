import 'package:fonts/data/repositories/font_file_io.repository.dart';

import 'fonts.repository.dart';

///END OF IMPORTS

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [fonts] is the [FontsDataRepository] instance.
  final FontsDataRepository fonts = FontsDataRepository();

  /// [fonts] is the [FontsDataRepository] instance.
  final FontFileIODataRepository fontsFileIO = FontFileIODataRepository();

  ///END OF REPOSITORIES
}
