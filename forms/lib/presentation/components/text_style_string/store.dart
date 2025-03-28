import "package:forms/presentation/components/theme_color_string/store.dart";
import "package:mobx/mobx.dart";
import "package:theme/extensions/text_style_string.dart";

import "../base/store.dart";

part "store.g.dart";

class TextStyleStringFormFieldStore = _TextStyleStringStringFormFieldStore
    with _$TextStyleStringFormFieldStore;

abstract class _TextStyleStringStringFormFieldStore
    extends BaseFormFieldStore<TextStyleString?> with Store {
  _TextStyleStringStringFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    // On Value Changed
    // reaction<TextStyleString?>((reaction) => value, (newValue) {
    // });
  }

  @observable
  String? color;

  late final ThemeColorStringFormFieldStore colorStore =
      ThemeColorStringFormFieldStore(
    title: "Color",
    initialValue: null,
    onValueChanged: (newColor) {
      color = newColor;
    },
  );

  @action
  void updateTextStyle(String firstPart, String secondPart) {
    value = "$firstPart-$secondPart${color != null ? "-$color" : ""}";
  }
}
