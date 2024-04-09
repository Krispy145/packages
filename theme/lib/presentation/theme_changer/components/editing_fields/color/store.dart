import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:theme/changer/components/colors/view.dart';
import 'package:theme/domain/converters/colors/color.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

// ignore: library_private_types_in_public_api
class ColorFormFieldStore = _ColorFormFieldStore with _$ColorFormFieldStore;

abstract class _ColorFormFieldStore extends BaseFormFieldStore<DOColor> with Store {
  _ColorFormFieldStore({
    required super.value,
    required super.onValueChanged,
    required super.title,
  }) {
    // ignore: prefer_const_constructors
    color = ColorConverter().fromJson(value.value) ?? Colors.transparent;
  }

  /// [color] to change.
  @observable
  late Color color;

  @action
  void onDone() {
    value = MapEntry(
      value.key,
      [color.red.toDouble(), color.green.toDouble(), color.blue.toDouble(), color.opacity],
    );
  }

  @action
  void updateColor({double? red, double? green, double? blue, double? opacity}) {
    final newColorList = [
      red?.roundToDouble() ?? color.red.toDouble(),
      green?.roundToDouble() ?? color.green.toDouble(),
      blue?.roundToDouble() ?? color.blue.toDouble(),
      opacity ?? color.opacity,
    ];
    AppLogger.print('updateColor: $newColorList', [PackageFeatures.theme]);
    color = const ColorConverter().fromJson(newColorList) ?? Colors.transparent;
    AppLogger.print('color: ${color.red} ${color.green} ${color.blue} ${color.opacity}, ${color == const ColorConverter().fromJson(value.value)}', [PackageFeatures.theme]);
  }
}
