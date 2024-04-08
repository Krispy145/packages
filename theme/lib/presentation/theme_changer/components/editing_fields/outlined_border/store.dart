import 'package:mobx/mobx.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_radius/store.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_side/store.dart';

part 'store.g.dart';

class OutlinedBorderFormFieldStore = _OutlinedBorderFormFieldStore with _$OutlinedBorderFormFieldStore;

abstract class _OutlinedBorderFormFieldStore extends BaseFormFieldStore<OutlinedBorderModel> with Store {
  _OutlinedBorderFormFieldStore({required super.value, required super.onValueChanged, required super.title}) {
    outlinedBorderType = value.type_enum_outlinedBorderType ?? OutlinedBorderType.roundedRectangleBorder;

    // On Type Changed
    // reaction<OutlinedBorderType>(
    //   (reaction) => type,
    //   (newType) {
    //   },
    // );
    // On Value Changed
    // reaction<OutlinedBorderModel>((reaction) => value, (newValue) {});
  }

  // late OutlinedBorderType type;

  // @action
  // void onTypeChanged(OutlinedBorderType newType) {
  //   type = newType;
  //   value = value.copyWith(type_enum_OutlinedBorderType: newType);
  // }

  // @action
  // void onBorderSideChanged(BorderSideModel? borderSide) {
  //   value = value.copyWith(borderSide_borderSide: borderSide);
  // }

  // @action
  // void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
  //   value = value.copyWith(borderRadius_borderRadius: borderRadius);
  // }

  // @action
  // void onGapPaddingChanged(double? gapPadding) {
  //   value = value.copyWith(gapPadding_double: gapPadding);
  // }

  // @computed
  // bool get showBorderRadiusField => [OutlinedBorderType.outlined, OutlinedBorderType.underlined].contains(type);
  // @computed
  // bool get showBorderSideField => [OutlinedBorderType.outlined, OutlinedBorderType.underlined].contains(type);
  // @computed
  // bool get showGapPaddingField => [OutlinedBorderType.outlined].contains(type);

  late OutlinedBorderType outlinedBorderType;

  late final borderSideStore = BorderSideFormFieldStore(
    value: value.side_borderSide ?? const BorderSideModel(),
    onValueChanged: onBorderSideChanged,
    title: 'Border Side',
  );

  late final borderRadiusStore = BorderRadiusFormFieldStore(
    onValueChanged: onBorderRadiusChanged,
    value: value.borderRadius_borderRadius ?? const BorderRadiusModel(),
    title: 'Border Radius',
  );

  @action
  void onTypeChanged(OutlinedBorderType type) {
    outlinedBorderType = type;
    value = value.copyWith(type_enum_outlinedBorderType: type);
  }

  @action
  void onBorderSideChanged(BorderSideModel? borderSide) {
    value = value.copyWith(side_borderSide: borderSide);
  }

  @action
  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    value = value.copyWith(borderRadius_borderRadius: borderRadius);
  }

  @computed
  bool get showBorderRadiusField => [
        OutlinedBorderType.beveledRectangleBorder,
        OutlinedBorderType.ovalBorder,
        OutlinedBorderType.continuousRectangleBorder,
        OutlinedBorderType.roundedRectangleBorder,
      ].contains(outlinedBorderType);

  @computed
  bool get showBorderSideField => [
        OutlinedBorderType.circleBorder,
        OutlinedBorderType.stadiumBorder,
        OutlinedBorderType.starBorder,
        OutlinedBorderType.beveledRectangleBorder,
        OutlinedBorderType.continuousRectangleBorder,
        OutlinedBorderType.roundedRectangleBorder,
        OutlinedBorderType.linearBorder,
      ].contains(outlinedBorderType);
}
