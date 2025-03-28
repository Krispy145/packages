import "package:forms/presentation/components/border_radius/store.dart";
import "package:forms/presentation/components/border_side/store.dart";
import "package:forms/presentation/components/enum/store.dart";
import "package:forms/presentation/components/theme_color_string/store.dart";
import "package:mobx/mobx.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/box_border_model.dart";
import "package:theme/data/models/box_decorations/box_decoration_model.dart";

import "../base/store.dart";

part "store.g.dart";

// enum BoxDecorationTypes { all, symmetric, only, zero }

class BoxDecorationFormFieldStore = _BoxDecorationFormFieldStore
    with _$BoxDecorationFormFieldStore;

abstract class _BoxDecorationFormFieldStore
    extends BaseFormFieldStore<BoxDecorationModel> with Store {
  _BoxDecorationFormFieldStore({
    super.initialValue = const BoxDecorationModel(),
    required super.onValueChanged,
    required super.title,
  }) {
    // TO ADD:
    // boxShadows_list_boxShadow
    // gradient_gradient
    // backgroundBlendMode_enum_blendMode
  }

  late final borderSideStore = BorderSideFormFieldStore(
    onValueChanged: onBoxBorderChanged,
    initialValue: value?.border_boxBorder?.top ?? const BorderSideModel(),
    title: "Border Sides",
  );

  late final borderRadiusStore = BorderRadiusFormFieldStore(
    onValueChanged: onBorderRadiusChanged,
    initialValue: value?.borderRadius_borderRadius ?? const BorderRadiusModel(),
    title: "Border Radius",
  );

  late final colorStore = ThemeColorStringFormFieldStore(
    onValueChanged: onColorChanged,
    initialValue: value?.color_themeColorString,
    title: "Color",
  );

  late final shapeTypeStore = EnumFormFieldStore<BoxShapeType>(
    options: BoxShapeType.values,
    onValueChanged: (newShape) {},
    initialValue: value?.shape_enum_boxShape ?? BoxShapeType.rectangle,
    title: "Shape",
  );

  @action
  void onShapeTypeChanged(BoxShapeType? shape) {
    value = (value ?? const BoxDecorationModel())
        .copyWith(shape_enum_boxShape: shape);
  }

  @action
  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    value = (value ?? const BoxDecorationModel())
        .copyWith(borderRadius_borderRadius: borderRadius);
  }

  @action
  void onColorChanged(String? colorString) {
    value = (value ?? const BoxDecorationModel())
        .copyWith(color_themeColorString: colorString);
  }

  @action
  void onBoxBorderChanged(BorderSideModel? borderSide) {
    value = (value ?? const BoxDecorationModel()).copyWith(
      border_boxBorder: BoxBorderModel.fromBorderSide(
        borderSide ?? const BorderSideModel(),
      ),
    );
  }

  // @action
  // void onGapPaddingChanged(double? gapPadding) {
  //   value = (value ?? const BoxDecorationModel()).copyWith(gapPadding_double: gapPadding);
  // }
}
