import "package:mobx/mobx.dart";
import "package:theme/data/models/edge_insets_model.dart";

import "../base/store.dart";
import "../double/store.dart";

part "store.g.dart";

class EdgeInsetsFormFieldStore = _EdgeInsetsFormFieldStore
    with _$EdgeInsetsFormFieldStore;

abstract class _EdgeInsetsFormFieldStore
    extends BaseFormFieldStore<EdgeInsetsModel> with Store {
  _EdgeInsetsFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    // On Type Changed
    // reaction<EdgeInsetsTypes>(
    //   (reaction) => type,
    //   (newType) {
    //     switch (newType) {
    //       case EdgeInsetsTypes.all:
    //         value = EdgeInsetsModel(top_double: value?.top_double, bottom_double: value?.top_double, right_double: value?.top_double, left_double: value?.top_double);
    //       case EdgeInsetsTypes.zero:
    //         value = const EdgeInsetsModel(top_double: 0, bottom_double: 0, left_double: 0, right_double: 0);
    //       case EdgeInsetsTypes.symmetric:
    //         value = EdgeInsetsModel(top_double: value?.top_double, bottom_double: value?.top_double, right_double: value?.right_double, left_double: value?.left_double);
    //       case EdgeInsetsTypes.only:
    //         value = EdgeInsetsModel(top_double: value?.top_double, bottom_double: value?.bottom_double, left_double: value?.left_double, right_double: value?.right_double);
    //     }
    //   },
    // );
    // On Value Changed
    // reaction<EdgeInsetsModel?>((reaction) => value, (newValue) {
    //   topController.text = newValue.top.toString();
    //   bottomController.text = newValue.bottom.toString();
    //   leftController.text = newValue.left.toString();
    //   rightController.text = newValue.right.toString();
    // });
  }

  late final DoubleFormFieldStore topStore = DoubleFormFieldStore(
    initialValue: value?.top_double,
    onValueChanged: onTopFieldChanged,
    showButtons: false,
    title: "Top",
  );
  late final DoubleFormFieldStore leftStore = DoubleFormFieldStore(
    initialValue: value?.left_double,
    onValueChanged: onLeftFieldChanged,
    showButtons: false,
    title: "Left",
  );
  late final DoubleFormFieldStore bottomStore = DoubleFormFieldStore(
    initialValue: value?.bottom_double,
    onValueChanged: onBottomFieldChanged,
    showButtons: false,
    title: "Bottom",
  );
  late final DoubleFormFieldStore rightStore = DoubleFormFieldStore(
    initialValue: value?.right_double,
    onValueChanged: onRightFieldChanged,
    showButtons: false,
    title: "Right",
  );

  @observable
  EdgeInsetsTypes type = EdgeInsetsTypes.all;

  @computed
  bool get topEnabled => [
        EdgeInsetsTypes.all,
        EdgeInsetsTypes.symmetric,
        EdgeInsetsTypes.only,
      ].contains(type);
  @computed
  bool get bottomEnabled => type == EdgeInsetsTypes.only;
  @computed
  bool get leftEnabled =>
      [EdgeInsetsTypes.symmetric, EdgeInsetsTypes.only].contains(type);
  @computed
  bool get rightEnabled => type == EdgeInsetsTypes.only;

  @action
  void setType(EdgeInsetsTypes newType) {
    type = newType;
    switch (newType) {
      case EdgeInsetsTypes.all:
        value = EdgeInsetsModel(
          top_double: value?.top_double,
          bottom_double: value?.top_double,
          right_double: value?.top_double,
          left_double: value?.top_double,
        );
      case EdgeInsetsTypes.zero:
        value = const EdgeInsetsModel(
          top_double: 0,
          bottom_double: 0,
          left_double: 0,
          right_double: 0,
        );
      case EdgeInsetsTypes.symmetric:
        value = EdgeInsetsModel(
          top_double: value?.top_double,
          bottom_double: value?.top_double,
          right_double: value?.right_double,
          left_double: value?.left_double,
        );
      case EdgeInsetsTypes.only:
        value = EdgeInsetsModel(
          top_double: value?.top_double,
          bottom_double: value?.bottom_double,
          left_double: value?.left_double,
          right_double: value?.right_double,
        );
    }
  }

  @action
  void onTopFieldChanged(double? topValue) {
    final newTop = topValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.all:
        value = (value ?? const EdgeInsetsModel()).copyWith(
          top_double: newTop,
          left_double: newTop,
          bottom_double: newTop,
          right_double: newTop,
        );
      // value = EdgeInsets.all(newTop);
      case EdgeInsetsTypes.symmetric:
        value = (value ?? const EdgeInsetsModel())
            .copyWith(top_double: newTop, bottom_double: newTop);
      // value = EdgeInsets.symmetric(vertical: newTop, horizontal: value.left);
      case EdgeInsetsTypes.only:
        value = (value ?? const EdgeInsetsModel()).copyWith(top_double: newTop);
      // value = EdgeInsets.only(top: newTop, bottom: value.bottom, left: value.left, right: value.right);
      default:
        break;
    }
  }

  @action
  void onLeftFieldChanged(double? leftValue) {
    final newLeft = leftValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.symmetric:
        value = (value ?? const EdgeInsetsModel())
            .copyWith(left_double: newLeft, right_double: newLeft);
      // value = EdgeInsets.symmetric(vertical: value.top, horizontal: newLeft);
      case EdgeInsetsTypes.only:
        // value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: newLeft, right: value.right);
        value =
            (value ?? const EdgeInsetsModel()).copyWith(left_double: newLeft);
      default:
        break;
    }
  }

  @action
  void onRightFieldChanged(double? rightValue) {
    final newRight = rightValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.only:
        value =
            (value ?? const EdgeInsetsModel()).copyWith(right_double: newRight);
        // value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: value.left, right: newRight);
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
        // value = EdgeInsets.only(top: value.top, bottom: newBottom, left: value.left, right: value.right);
        value = (value ?? const EdgeInsetsModel())
            .copyWith(bottom_double: newBottom);
        break;
      default:
        break;
    }
  }
}
