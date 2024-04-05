import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';

part 'store.g.dart';

enum EdgeInsetsTypes { all, symmetric, only, zero }

class EdgeInsetsFormFieldStore = _EdgeInsetsFormFieldStore with _$EdgeInsetsFormFieldStore;

abstract class _EdgeInsetsFormFieldStore extends BaseFormFieldStore<EdgeInsets> with Store {
  _EdgeInsetsFormFieldStore({required super.value, required super.onValueChanged}) {
    // On Type Changed
    reaction<EdgeInsetsTypes>(
      (reaction) => type,
      (newType) {
        switch (newType) {
          case EdgeInsetsTypes.all:
            value = EdgeInsets.all(value.top);
          case EdgeInsetsTypes.zero:
            value = EdgeInsets.zero;
          case EdgeInsetsTypes.symmetric:
            value = EdgeInsets.symmetric(vertical: value.top, horizontal: value.left);
          case EdgeInsetsTypes.only:
            value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: value.left, right: value.right);
        }
      },
    );
    // On Value Changed
    reaction<EdgeInsets>((reaction) => value, (newValue) {
      topController.text = newValue.top.toString();
      bottomController.text = newValue.bottom.toString();
      leftController.text = newValue.left.toString();
      rightController.text = newValue.right.toString();
    });
  }

  late final TextEditingController topController = TextEditingController(text: value.top.toString());
  late final TextEditingController leftController = TextEditingController(text: value.left.toString());
  late final TextEditingController bottomController = TextEditingController(text: value.bottom.toString());
  late final TextEditingController rightController = TextEditingController(text: value.right.toString());

  @observable
  EdgeInsetsTypes type = EdgeInsetsTypes.all;

  @computed
  bool get topEnabled => [EdgeInsetsTypes.all, EdgeInsetsTypes.symmetric, EdgeInsetsTypes.only].contains(type);
  @computed
  bool get bottomEnabled => type == EdgeInsetsTypes.only;
  @computed
  bool get leftEnabled => [EdgeInsetsTypes.symmetric, EdgeInsetsTypes.only].contains(type);
  @computed
  bool get rightEnabled => type == EdgeInsetsTypes.only;

  @action
  void onTopFieldChanged(double? topValue) {
    final newTop = topValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.all:
        value = EdgeInsets.all(newTop);
      case EdgeInsetsTypes.symmetric:
        value = EdgeInsets.symmetric(vertical: newTop, horizontal: value.left);
      case EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: newTop, bottom: value.bottom, left: value.left, right: value.right);
      default:
        break;
    }
  }

  @action
  void onLeftFieldChanged(double? leftValue) {
    final newLeft = leftValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.symmetric:
        value = EdgeInsets.symmetric(vertical: value.top, horizontal: newLeft);
      case EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: newLeft, right: value.right);
      default:
        break;
    }
  }

  @action
  void onRightFieldChanged(double? rightValue) {
    final newRight = rightValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: value.left, right: newRight);
        break;
      default:
        break;
    }
  }

  @action
  void onBottomFieldChanged(double? bottomValue) {
    final newBottom = bottomValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: value.top, bottom: newBottom, left: value.left, right: value.right);
        break;
      default:
        break;
    }
  }
}
