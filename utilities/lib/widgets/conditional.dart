import "package:flutter/material.dart";

/// [ConditionalWidget] is a widget that allows you to conditionally render a widget.
class ConditionalWidget extends StatelessWidget {
  /// [condition] is the condition that will be used to determine whether or not to render the [child].
  final bool condition;

  /// [child] is the widget that will be rendered if the [condition] is true.
  final Widget child;

  /// [elseChild] is the widget that will be rendered if the [condition] is false.
  final Widget? elseChild;

  /// [ConditionalWidget] constructor
  const ConditionalWidget({
    super.key,
    required this.condition,
    required this.child,
    this.elseChild,
  });

  @override
  Widget build(BuildContext context) {
    return condition ? child : elseChild ?? const SizedBox.shrink();
  }
}
