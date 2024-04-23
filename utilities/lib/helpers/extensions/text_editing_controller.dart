import 'package:flutter/material.dart';

extension TextEditingControllerExtension on TextEditingController {
  void setTextIfNotEqual(String text) {
    if (text != this.text) {
      this.text = text;
    }
  }
}
