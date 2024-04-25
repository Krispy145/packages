import 'package:flutter/material.dart';
import 'package:utilities/helpers/extensions/build_context.dart';

class OneTwoTransition extends StatefulWidget {
  final Widget one;
  final Widget two;
  const OneTwoTransition({
    super.key,
    required this.one,
    required this.two,
  });

  @override
  State<OneTwoTransition> createState() => _OneTwoTransitionState();
}

class _OneTwoTransitionState extends State<OneTwoTransition> {
  final double mediumWidthBreakpoint = 1000;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: context.screenWidth / 2, child: widget.one),
        Expanded(
          child: widget.two,
        ),
      ],
    );
  }
}

class OffsetAnimation extends CurvedAnimation {
  OffsetAnimation(Animation<double> parent)
      : super(
          parent: parent,
          curve: const Interval(
            0.4,
            1,
            curve: Curves.easeInOutCubicEmphasized,
          ),
          reverseCurve: Interval(
            0,
            0.2,
            curve: Curves.easeInOutCubicEmphasized.flipped,
          ),
        );
}

class SizeAnimation extends CurvedAnimation {
  SizeAnimation(Animation<double> parent)
      : super(
          parent: parent,
          curve: const Interval(
            0.2,
            0.8,
            curve: Curves.easeInOutCubicEmphasized,
          ),
          reverseCurve: Interval(
            0,
            0.2,
            curve: Curves.easeInOutCubicEmphasized.flipped,
          ),
        );
}
