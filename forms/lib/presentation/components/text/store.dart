import "package:flutter/material.dart";
import "package:forms/presentation/components/text/text_form_field_controller.dart";
import "package:mobx/mobx.dart";
import "package:utilities/helpers/extensions/text_editing_controller.dart";

import "../base/store.dart";

part "store.g.dart";

class TextFormFieldStore = _TextFormFieldStore with _$TextFormFieldStore;

abstract class _TextFormFieldStore extends BaseFormFieldStore<String?> with Store {
  _TextFormFieldStore({
    required super.value,
    required super.onValueChanged,
    required super.title,
    this.textFormFieldController = const TextFormFieldController(),
  }) {
    setLoading();
    textController = TextEditingController(text: value);
    // On Value Changed
    reaction<String?>((reaction) => value, (newValue) {
      textController.setTextIfNotEqual(newValue.toString());
    });
    setLoaded();
  }
  @observable
  late TextEditingController textController;

  final TextFormFieldController textFormFieldController;
}
