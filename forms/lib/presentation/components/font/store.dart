import "package:mobx/mobx.dart";
import "../base/store.dart";

part "store.g.dart";

class FontFormFieldStore = _FontFormFieldStore with _$FontFormFieldStore;

abstract class _FontFormFieldStore extends BaseFormFieldStore<String?>
    with Store {
  _FontFormFieldStore({
    required super.value,
    required super.onValueChanged,
    required super.title,
  });
}
