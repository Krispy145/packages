import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/helpers/extensions/text_editing_controller.dart";

import "../base/store.dart";

part "store.g.dart";

class DoubleFormFieldStore = _DoubleFormFieldStore with _$DoubleFormFieldStore;

abstract class _DoubleFormFieldStore extends BaseFormFieldStore<double?>
    with Store {
  final bool changeOnSaved;

  _DoubleFormFieldStore({
    required super.initialValue,
    this.changeOnSaved = false,
    required super.onValueChanged,
    this.increment = 1,
    this.showButtons = true,
    required super.title,
  }) {
    // On Value Changed
    reaction<double?>((reaction) => value, (newValue) {
      textController.setTextIfNotEqual(newValue.toString());
    });
  }

  final double increment;
  final bool showButtons;

  late final TextEditingController textController =
      TextEditingController(text: value?.toString());

  @action
  void add() {
    if (value == null) {
      value = value! + increment;
    } else {
      value = 0;
    }
  }

  @action
  void subtract() {
    if (value == null) {
      value = value! - increment;
    } else {
      value = 0;
    }
  }
}
