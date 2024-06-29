import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:theme/data/models/borders/border_side_model.dart";

import "../base/store.dart";
import "../double/store.dart";
import "../enum/store.dart";
import "../theme_color_string/store.dart";

part "store.g.dart";

// enum BorderSideTypes { all, symmetric, only, zero }

class BorderSideFormFieldStore = _BorderSideFormFieldStore with _$BorderSideFormFieldStore;

abstract class _BorderSideFormFieldStore extends BaseFormFieldStore<BorderSideModel> with Store {
  _BorderSideFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    // On Type Changed
    // reaction<BorderSideType>(
    //   (reaction) => type,
    //   (newType) {
    //   },
    // );
    // On Value Changed
    // reaction<BorderSideModel>((reaction) => value, (newValue) {});
  }
  // late final allController = TextEditingController(text: value.all_double?.toString());
  // late final topLeftController = TextEditingController(text: value.topLeft_double?.toString());
  // late final topRightController = TextEditingController(text: value.topRight_double?.toString());
  // late final bottomLeftController = TextEditingController(text: value.bottomLeft_double?.toString());
  // late final bottomRightController = TextEditingController(text: value.bottomRight_double?.toString());

  late final widthStore = DoubleFormFieldStore(
    onValueChanged: (newWidth) => onValueChanged((value ?? const BorderSideModel()).copyWith(width_double: newWidth)),
    initialValue: value?.width_double,
    title: "Width",
  );
  late final strokeAlignStore = DoubleFormFieldStore(
    onValueChanged: (newStrokeAlign) => onValueChanged((value ?? const BorderSideModel()).copyWith(strokeAlign_double: newStrokeAlign)),
    initialValue: value?.strokeAlign_double,
    title: "Stroke Align",
  );
  late final colorStore = ThemeColorStringFormFieldStore(
    onValueChanged: (newColor) => onValueChanged((value ?? const BorderSideModel()).copyWith(color_themeColorString: newColor)),
    initialValue: value?.color_themeColorString,
    title: "Color",
  );
  late final styleStore = EnumFormFieldStore(
    onValueChanged: (newStyle) => onValueChanged(
      (value ?? const BorderSideModel()).copyWith(
        style_enum_borderStyle: BorderStyleType.values.firstWhere((element) => element.borderStyle == newStyle),
      ),
    ),
    initialValue: value?.style_enum_borderStyle,
    options: BorderStyle.values,
    title: "Style",
  );
}
