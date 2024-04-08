import 'package:mobx/mobx.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';

part 'store.g.dart';

class TextStyleStringFormFieldStore = _TextStyleStringFormFieldStore with _$TextStyleStringFormFieldStore;

abstract class _TextStyleStringFormFieldStore extends BaseFormFieldStore<TextStyleString?> with Store {
  _TextStyleStringFormFieldStore({required super.value, required super.onValueChanged, required super.title}) {
    // On Value Changed
    // reaction<TextStyleString?>((reaction) => value, (newValue) {
    // });
  }

  @action
  void updateTextStyle(String firstPart, String secondPart) {
    value = "$firstPart-$secondPart";
  }
}
