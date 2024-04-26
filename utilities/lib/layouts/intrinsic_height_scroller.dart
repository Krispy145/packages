import "package:flutter/material.dart";

/// Intrinsic Height Child Scroller
class IntrinsicHeightChildScroller extends StatelessWidget {
  /// Intrinsic Height Child Scroller
  final Widget child;

  /// Intrinsic Height Child Scroller constructor
  const IntrinsicHeightChildScroller({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(child: child),
          ),
        );
      },
    );
  }
}
