import 'package:mobx/mobx.dart';
import 'package:theme/extensions/text_style_string.dart';
import '../base/store.dart';

part 'store.g.dart';

class TextStyleStringFormFieldStore = _textStyleStringStringFormFieldStore with _$TextStyleStringFormFieldStore;

abstract class _textStyleStringStringFormFieldStore extends BaseFormFieldStore<TextStyleString?> with Store {
  _textStyleStringStringFormFieldStore({required super.value, required super.onValueChanged, required super.title}) {
    // On Value Changed
    // reaction<TextStyleString?>((reaction) => value, (newValue) {
    // });
  }

  @action
  void updateTextStyle(String firstPart, String secondPart) {
    value = "$firstPart-$secondPart";
  }
}
