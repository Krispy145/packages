import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:theme/data/models/borders/border_radius_model.dart";

import "../base/store.dart";

part "store.g.dart";

// enum BorderRadiusTypes { all, symmetric, only, zero }

class BorderRadiusFormFieldStore = _BorderRadiusFormFieldStore with _$BorderRadiusFormFieldStore;

abstract class _BorderRadiusFormFieldStore extends BaseFormFieldStore<BorderRadiusModel> with Store {
  _BorderRadiusFormFieldStore({
    super.initialValue = const BorderRadiusModel(),
    required super.onValueChanged,
    required super.title,
  }) {
    type = value?.type_enum_borderRadiusType ?? BorderRadiusType.circular;
    // On Type Changed
    // reaction<BorderRadiusType>(
    //   (reaction) => type,
    //   (newType) {
    //   },
    // );
    // On Value Changed
    // reaction<BorderRadiusModel>((reaction) => value, (newValue) {});
  }
  late BorderRadiusType type;

  late final allController = TextEditingController(text: value?.all_double?.toString());
  late final topLeftController = TextEditingController(text: value?.topLeft_double?.toString());
  late final topRightController = TextEditingController(text: value?.topRight_double?.toString());
  late final bottomLeftController = TextEditingController(text: value?.bottomLeft_double?.toString());
  late final bottomRightController = TextEditingController(text: value?.bottomRight_double?.toString());

  void onTypeChanged(BorderRadiusType newType) {
    type = newType;
    value = (value ?? const BorderRadiusModel()).copyWith(type_enum_borderRadiusType: newType);
  }

  void onAllChanged(String allValue) {
    value = (value ?? const BorderRadiusModel()).copyWith(all_double: double.tryParse(allValue));
  }

  void onTopLeftChanged(String topLeftValue) {
    value = (value ?? const BorderRadiusModel()).copyWith(topLeft_double: double.tryParse(topLeftValue));
  }

  void onTopRightChanged(String topRightValue) {
    value = (value ?? const BorderRadiusModel()).copyWith(topRight_double: double.tryParse(topRightValue));
  }

  void onBottomLeftChanged(String bottomLeftValue) {
    value = (value ?? const BorderRadiusModel()).copyWith(bottomLeft_double: double.tryParse(bottomLeftValue));
  }

  void onBottomRightChanged(String bottomRightValue) {
    value = (value ?? const BorderRadiusModel()).copyWith(bottomRight_double: double.tryParse(bottomRightValue));
  }
}
