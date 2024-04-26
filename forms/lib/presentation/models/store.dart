// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:utilities/widgets/load_state/base_store.dart';

part 'store.g.dart';

class FormsModelStore<T> = _FormsModelStore<T> with _$FormsModelStore<T>;

abstract class _FormsModelStore<T> extends LoadStateStore with Store {
  final void Function(T) onValueChanged;
  final void Function(T) onValueSaved;

  _FormsModelStore({required this.value, required this.onValueChanged, required this.onValueSaved}) {
    reaction((r) => value, onValueChanged);
    setLoaded();
  }

  @observable
  late T value;

  @action
  void saveValue() {
    onValueSaved(value);
  }
}
