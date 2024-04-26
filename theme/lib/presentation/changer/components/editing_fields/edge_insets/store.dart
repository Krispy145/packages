import 'package:mobx/mobx.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/presentation/changer/components/editing_fields/base/store.dart';
import 'package:theme/presentation/changer/components/editing_fields/double/store.dart';

part 'store.g.dart';

class EdgeInsetsFormFieldStore = _EdgeInsetsFormFieldStore with _$EdgeInsetsFormFieldStore;

abstract class _EdgeInsetsFormFieldStore extends BaseFormFieldStore<EdgeInsetsModel> with Store {
  _EdgeInsetsFormFieldStore({required super.value, required super.onValueChanged, required super.title}) {
    // On Type Changed
    // reaction<EdgeInsetsTypes>(
    //   (reaction) => type,
    //   (newType) {
    //     switch (newType) {
    //       case EdgeInsetsTypes.all:
    //         value = EdgeInsetsModel.all(value.top);
    //       case EdgeInsetsTypes.zero:
    //         value = EdgeInsets.zero;
    //       case EdgeInsetsTypes.symmetric:
    //         value = EdgeInsets.symmetric(vertical: value.top, horizontal: value.left);
    //       case EdgeInsetsTypes.only:
    //         value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: value.left, right: value.right);
    //     }
    //   },
    // );
    // On Value Changed
    // reaction<EdgeInsets>((reaction) => value, (newValue) {
    // topController.text = newValue.top.toString();
    // bottomController.text = newValue.bottom.toString();
    // leftController.text = newValue.left.toString();
    // rightController.text = newValue.right.toString();
    // });
  }

  late final DoubleFormFieldStore topStore = DoubleFormFieldStore(value: value.top_double, onValueChanged: onTopFieldChanged, title: 'Top');
  late final DoubleFormFieldStore leftStore = DoubleFormFieldStore(value: value.left_double, onValueChanged: onLeftFieldChanged, title: 'Left');
  late final DoubleFormFieldStore bottomStore = DoubleFormFieldStore(value: value.bottom_double, onValueChanged: onBottomFieldChanged, title: 'Bottom');
  late final DoubleFormFieldStore rightStore = DoubleFormFieldStore(value: value.right_double, onValueChanged: onRightFieldChanged, title: 'Right');

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
        value = value.copyWith(top_double: newTop, left_double: newTop, bottom_double: newTop, right_double: newTop);
      // value = EdgeInsets.all(newTop);
      case EdgeInsetsTypes.symmetric:
        value = value.copyWith(top_double: newTop, bottom_double: newTop);
      // value = EdgeInsets.symmetric(vertical: newTop, horizontal: value.left);
      case EdgeInsetsTypes.only:
        value = value.copyWith(top_double: newTop);
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
        value = value.copyWith(left_double: newLeft, right_double: newLeft);
      // value = EdgeInsets.symmetric(vertical: value.top, horizontal: newLeft);
      case EdgeInsetsTypes.only:
        // value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: newLeft, right: value.right);
        value = value.copyWith(left_double: newLeft);
      default:
        break;
    }
  }

  @action
  void onRightFieldChanged(double? rightValue) {
    final newRight = rightValue ?? 0;
    switch (type) {
      case EdgeInsetsTypes.only:
        value = value.copyWith(right_double: newRight);
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
        value = value.copyWith(bottom_double: newBottom);
        break;
      default:
        break;
    }
  }
}
