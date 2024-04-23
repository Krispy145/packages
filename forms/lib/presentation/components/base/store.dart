// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:utilities/widgets/load_state/base_store.dart';

part 'store.g.dart';

class BaseFormFieldStore<T> = _BaseFormFieldStore<T> with _$BaseFormFieldStore<T>;

abstract class _BaseFormFieldStore<T> extends LoadStateStore with Store {
  final void Function(T) onValueChanged;

  final String title;

  _BaseFormFieldStore({required this.title, required this.value, required this.onValueChanged}) {
    reaction((r) => value, onValueChanged);
  }

  @observable
  late T value;
}
