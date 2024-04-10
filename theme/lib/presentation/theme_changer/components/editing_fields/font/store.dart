import 'package:mobx/mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';

part 'store.g.dart';

class FontFormFieldStore = _FontFormFieldStore with _$FontFormFieldStore;

abstract class _FontFormFieldStore extends BaseFormFieldStore<String?> with Store {
  _FontFormFieldStore({
    required super.value,
    required super.onValueChanged,
    required super.title,
  });
}
