import 'package:mobx/mobx.dart';
import 'package:utilities/widgets/load_state/base_store.dart';
import 'domain/repositories/fonts.repository.dart';

part 'store.g.dart';

/// [FontsStore] is a class that uses [FontsBaseStore] to manage state of the fonts feature.
class FontsStore = FontsBaseStore with _$FontsStore;

/// [FontsBaseStore] is a class that manages the state of the fonts feature.
abstract class FontsBaseStore extends LoadStateStore with Store {
  /// [repository] is an instance of [FontsRepository].
  final FontsRepository repository = FontsRepository();
}
