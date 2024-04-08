import 'package:mobx/mobx.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/input_border_model.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_radius/store.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_side/store.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/double/store.dart';

part 'store.g.dart';

class InputBorderFormFieldStore = _InputBorderFormFieldStore with _$InputBorderFormFieldStore;

abstract class _InputBorderFormFieldStore extends BaseFormFieldStore<InputBorderModel> with Store {
  _InputBorderFormFieldStore({required super.value, required super.onValueChanged, required super.title}) {
    type = value.type_enum_inputBorderType ?? InputBorderType.none;
  }

  late InputBorderType type;

  late final borderRadiusStore = BorderRadiusFormFieldStore(
    onValueChanged: onBorderRadiusChanged,
    value: value.borderRadius_borderRadius ?? const BorderRadiusModel(),
    title: 'Border Radius',
  );

  late final borderSideStore = BorderSideFormFieldStore(
    value: value.borderSide_borderSide ?? const BorderSideModel(),
    onValueChanged: onBorderSideChanged,
    title: 'Border Side',
  );

  late final gapPaddingStore = DoubleFormFieldStore(onValueChanged: onGapPaddingChanged, value: value.gapPadding_double, title: 'Gap Padding');

  @action
  void onTypeChanged(InputBorderType newType) {
    type = newType;
    value = value.copyWith(type_enum_inputBorderType: newType);
  }

  @action
  void onBorderSideChanged(BorderSideModel? borderSide) {
    value = value.copyWith(borderSide_borderSide: borderSide);
  }

  @action
  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    value = value.copyWith(borderRadius_borderRadius: borderRadius);
  }

  @action
  void onGapPaddingChanged(double? gapPadding) {
    value = value.copyWith(gapPadding_double: gapPadding);
  }

  @computed
  bool get showBorderRadiusField => [InputBorderType.outlined, InputBorderType.underlined].contains(type);
  @computed
  bool get showBorderSideField => [InputBorderType.outlined, InputBorderType.underlined].contains(type);
  @computed
  bool get showGapPaddingField => [InputBorderType.outlined].contains(type);
}
