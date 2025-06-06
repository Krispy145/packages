import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:theme/domain/converters/colors/color.dart";
import "package:theme/presentation/components/colors/view.dart";

import "../base/store.dart";

part "store.g.dart";

class ColorFormFieldStore = _ThemeColorStringFormFieldStore with _$ColorFormFieldStore;

abstract class _ThemeColorStringFormFieldStore extends BaseFormFieldStore<PLSColor> with Store {
  _ThemeColorStringFormFieldStore({required super.initialValue, required super.title, required super.onValueChanged});

  /// [color] to change.
  @observable
  late Color color = const ColorMapper().decode(value?.value);

  /// Updates the [value] color of the field, triggering an update of the theme
  @action
  void onDone() {
    debugPrint("onDone: $value - $color");
    if (value?.key != null) {
      value = MapEntry(value!.key, [color.red.toDouble(), color.green.toDouble(), color.blue.toDouble(), color.opacity]);
    }
  }

  /// Updates the [color] property within the field (not the field's [value])
  @action
  void updateColor({double? red, double? green, double? blue, double? opacity}) {
    final newColorList = [red?.roundToDouble() ?? color.red.toDouble(), green?.roundToDouble() ?? color.green.toDouble(), blue?.roundToDouble() ?? color.blue.toDouble(), opacity ?? color.opacity];
    color = const ColorMapper().decode(newColorList);
  }
}
