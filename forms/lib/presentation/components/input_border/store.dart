import "package:mobx/mobx.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/input_border_model.dart";

import "../base/store.dart";
import "../border_radius/store.dart";
import "../border_side/store.dart";
import "../double/store.dart";

part "store.g.dart";

class InputBorderFormFieldStore = _InputBorderFormFieldStore
    with _$InputBorderFormFieldStore;

abstract class _InputBorderFormFieldStore
    extends BaseFormFieldStore<InputBorderModel> with Store {
  _InputBorderFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    type = value?.type_enum_inputBorderType ?? InputBorderType.none;
  }

  @observable
  late InputBorderType type;

  late final borderRadiusStore = BorderRadiusFormFieldStore(
    onValueChanged: onBorderRadiusChanged,
    initialValue: value?.borderRadius_borderRadius ?? const BorderRadiusModel(),
    title: "Border Radius",
  );

  late final borderSideStore = BorderSideFormFieldStore(
    initialValue: value?.borderSide_borderSide ?? const BorderSideModel(),
    onValueChanged: onBorderSideChanged,
    title: "Border Side",
  );

  late final gapPaddingStore = DoubleFormFieldStore(
    onValueChanged: onGapPaddingChanged,
    initialValue: value?.gapPadding_double,
    title: "Gap Padding",
  );

  @action
  void onTypeChanged(InputBorderType newType) {
    type = newType;
    value = (value ?? const InputBorderModel())
        .copyWith(type_enum_inputBorderType: newType);
  }

  @action
  void onBorderSideChanged(BorderSideModel? borderSide) {
    value = (value ?? const InputBorderModel())
        .copyWith(borderSide_borderSide: borderSide);
  }

  @action
  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    value = (value ?? const InputBorderModel())
        .copyWith(borderRadius_borderRadius: borderRadius);
  }

  @action
  void onGapPaddingChanged(double? gapPadding) {
    value = (value ?? const InputBorderModel())
        .copyWith(gapPadding_double: gapPadding);
  }

  @computed
  bool get showBorderRadiusField =>
      [InputBorderType.outlined, InputBorderType.underlined].contains(type);
  @computed
  bool get showBorderSideField =>
      [InputBorderType.outlined, InputBorderType.underlined].contains(type);
  @computed
  bool get showGapPaddingField => [InputBorderType.outlined].contains(type);
}
