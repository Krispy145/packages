import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/presentation/changer/components/editing_fields/base/store.dart';
import 'package:theme/presentation/changer/components/editing_fields/double/store.dart';
import 'package:theme/presentation/changer/components/editing_fields/enum/store.dart';
import 'package:theme/presentation/changer/components/editing_fields/theme_color_string/store.dart';

part 'store.g.dart';

// enum BorderSideTypes { all, symmetric, only, zero }

class BorderSideFormFieldStore = _BorderSideFormFieldStore with _$BorderSideFormFieldStore;

abstract class _BorderSideFormFieldStore extends BaseFormFieldStore<BorderSideModel> with Store {
  _BorderSideFormFieldStore({required super.value, required super.onValueChanged, required super.title}) {
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

  late final widthStore = DoubleFormFieldStore(onValueChanged: (newWidth) => onValueChanged(value.copyWith(width_double: newWidth)), value: value.width_double, title: 'Width');
  late final strokeAlignStore =
      DoubleFormFieldStore(onValueChanged: (newStrokeAlign) => onValueChanged(value.copyWith(strokeAlign_double: newStrokeAlign)), value: value.strokeAlign_double, title: 'Stroke Align');
  late final colorStore =
      ThemeColorStringFormFieldStore(onValueChanged: (newColor) => onValueChanged(value.copyWith(color_themeColorString: newColor)), value: value.color_themeColorString, title: 'Color');
  late final styleStore = EnumFormFieldStore(
    onValueChanged: (newStyle) => onValueChanged(value.copyWith(style_enum_borderStyle: newStyle as BorderStyle?)),
    value: value.style_enum_borderStyle,
    options: BorderStyle.values,
    title: 'Style',
  );
}
