import 'package:mobx/mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';

part 'store.g.dart';

class BoolFormFieldStore = _BoolFormFieldStore with _$BoolFormFieldStore;

abstract class _BoolFormFieldStore extends BaseFormFieldStore<bool?> with Store {
  _BoolFormFieldStore({required super.value, required super.onValueChanged});
}
