import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/helpers/extensions/text_editing_controller.dart';
import '../base/store.dart';

part 'store.g.dart';

class IntFormFieldStore = _IntFormFieldStore with _$IntFormFieldStore;

abstract class _IntFormFieldStore extends BaseFormFieldStore<int?> with Store {
  _IntFormFieldStore({required super.value, required super.onValueChanged, this.increment = 1, this.showButtons = true, required super.title}) {
    // On Value Changed
    reaction<int?>((reaction) => value, (newValue) {
      textController.setTextIfNotEqual(newValue.toString());
    });
  }

  final int increment;
  final bool showButtons;

  late final TextEditingController textController = TextEditingController(text: value.toString());

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
