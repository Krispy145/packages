import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/app/app.dart";
import "package:theme/presentation/panel/store.dart";
import "package:utilities/helpers/extensions/build_context.dart";

/// [ExpandingPanelViewType] is an enum that defines the type of the panel view.
enum ExpandingPanelViewType {
  /// [left] is the left panel view.
  left,

  /// [right] is the right panel view.
  right,

  /// [top] is the top panel view.
  top,

  /// [bottom] is the bottom panel view.
  bottom,
}

/// [ExpandingPanelViewBuilder] is a class that builds the panel view.
class ExpandingPanelViewBuilder extends StatelessWidget {
  /// [viewBuilder] is a function that builds the panel view with access to the [ExpandingPanelViewStore].
  final Widget Function(BuildContext context, ExpandingPanelViewStore panelStore) panelViewBuilder;

  /// [viewBuilder] is a function that builds the panel view with access to the [ExpandingPanelViewStore].
  final Widget Function(BuildContext context, ExpandingPanelViewStore panelStore) viewBuilder;

  /// [type] is the [ExpandingPanelViewType] of the panel view.
  final ExpandingPanelViewType type;

  /// [widthPercentage] is the width percentage of the panel view.
  final double widthPercentage;

  /// [ExpandingPanelViewBuilder.left] constructor.
  ExpandingPanelViewBuilder.left({
    super.key,
    required this.panelViewBuilder,
    required this.viewBuilder,
    this.widthPercentage = 0.2,
  }) : type = ExpandingPanelViewType.left;

  /// [ExpandingPanelViewBuilder.right] constructor.
  ExpandingPanelViewBuilder.right({
    super.key,
    required this.panelViewBuilder,
    required this.viewBuilder,
    this.widthPercentage = 0.2,
  }) : type = ExpandingPanelViewType.right;

  /// [ExpandingPanelViewBuilder.top] constructor.
  ExpandingPanelViewBuilder.top({
    super.key,
    required this.panelViewBuilder,
    required this.viewBuilder,
    this.widthPercentage = 0.2,
  }) : type = ExpandingPanelViewType.top;

  /// [ExpandingPanelViewBuilder.bottom] constructor.
  ExpandingPanelViewBuilder.bottom({
    super.key,
    required this.panelViewBuilder,
    required this.viewBuilder,
    this.widthPercentage = 0.2,
  }) : type = ExpandingPanelViewType.bottom;

  /// [store] is the [ExpandingPanelViewStore] for the panel view.
  final ExpandingPanelViewStore store = ExpandingPanelViewStore();

  Color? get _onSecondaryContainer => AppTheme.currentColorModel?.onSecondaryContainer;

  double _buildPanelViewWidth(BuildContext context, double percentage) {
    if (type == ExpandingPanelViewType.left || type == ExpandingPanelViewType.right) {
      return context.screenWidth * percentage;
    }
    return context.screenWidth;
  }

  double _buildPanelViewHeight(BuildContext context, double percentage) {
    if (type == ExpandingPanelViewType.top || type == ExpandingPanelViewType.bottom) {
      return context.screenHeight * percentage;
    }
    return context.screenHeight;
  }

  IconData _buildPanelViewIcon() {
    switch (type) {
      case ExpandingPanelViewType.left:
        return Icons.arrow_back_ios;
      case ExpandingPanelViewType.right:
        return Icons.arrow_forward_ios;
      case ExpandingPanelViewType.top:
        return Icons.arrow_upward;
      case ExpandingPanelViewType.bottom:
        return Icons.arrow_downward;
    }
  }

  IconData _buildPanelViewShowIcon() {
    switch (type) {
      case ExpandingPanelViewType.right:
        return Icons.arrow_back_ios;
      case ExpandingPanelViewType.left:
        return Icons.arrow_forward_ios;
      case ExpandingPanelViewType.bottom:
        return Icons.arrow_upward;
      case ExpandingPanelViewType.top:
        return Icons.arrow_downward;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        viewBuilder(context, store),
        Observer(
          builder: (context) {
            return Positioned(
              top: type == ExpandingPanelViewType.top ? 0 : null,
              bottom: type == ExpandingPanelViewType.bottom ? 0 : null,
              left: type == ExpandingPanelViewType.left ? 0 : null,
              right: type == ExpandingPanelViewType.right ? 0 : null,
              child: _buildPanelAndToggle(context),
            );
          },
        ),
      ],
    );
  }

  Alignment _buildPanelAlignment() {
    switch (type) {
      case ExpandingPanelViewType.left:
        return Alignment.topLeft;
      case ExpandingPanelViewType.right:
        return Alignment.topRight;
      case ExpandingPanelViewType.top:
        return Alignment.topCenter;
      case ExpandingPanelViewType.bottom:
        return Alignment.bottomCenter;
    }
  }

  Widget _buildPanelAndToggle(BuildContext context) {
    if (!store.isOpen) {
      return const SizedBox.shrink(); //_buildPanelChild(context);
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        color: _onSecondaryContainer,
      ),
      child: Column(
        children: [
          Align(
            alignment: _buildPanelAlignment(),
            child: IconButton(
              icon: Icon(
                _buildPanelViewIcon(),
                color: AppTheme.currentColorModel?.primary,
              ),
              onPressed: store.toggle,
            ),
          ),
          _buildPanelChild(context),
        ],
      ),
    );

    // return Column(
    //   children: [
    //     _buildPanelChild(context),
    //     IconButton(
    //       icon: Icon(
    //         _buildPanelViewIcon(),
    //         color: _onSecondaryContainer,
    //       ),
    //       onPressed: store.toggle,
    //     ),
    //   ],
    // );
  }

  Widget _buildPanelChild(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstCurve: Curves.easeInOut,
      secondCurve: Curves.easeInOut,
      crossFadeState: store.isOpen ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: GestureDetector(
        onTap: store.toggle,
        child: SizedBox(
          width: _buildPanelViewWidth(context, widthPercentage),
          height: _buildPanelViewHeight(context, 1),
          child: panelViewBuilder(context, store),
        ),
      ),
      secondChild: SizedBox(
        width: _buildPanelViewWidth(context, widthPercentage),
        height: _buildPanelViewHeight(context, 1),
        child: IconButton(
          icon: Icon(
            _buildPanelViewShowIcon(),
            color: _onSecondaryContainer,
          ),
          onPressed: store.toggle,
        ),
      ),
    );
  }
}
