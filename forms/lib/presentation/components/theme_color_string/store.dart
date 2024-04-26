import "package:mobx/mobx.dart";
import "package:theme/extensions/theme_color_string.dart";
import "../base/store.dart";

part "store.g.dart";

class ThemeColorStringFormFieldStore = _ThemeColorStringFormFieldStore
    with _$ThemeColorStringFormFieldStore;

abstract class _ThemeColorStringFormFieldStore
    extends BaseFormFieldStore<ThemeColorString?> with Store {
  _ThemeColorStringFormFieldStore(
      {required super.value,
      required super.onValueChanged,
      required super.title,}) {
    // On Value Changed
    // reaction<ThemeColorString?>((reaction) => value, (newValue) {
    // });
  }
}
