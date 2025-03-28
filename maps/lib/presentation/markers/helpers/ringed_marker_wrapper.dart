import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";

class RingedMarkerWrapper extends StatelessWidget {
  final bool selected;
  final void Function()? onTapped;
  final Widget Function(BuildContext) childBuilder;

  const RingedMarkerWrapper({
    super.key,
    required this.selected,
    required this.onTapped,
    required this.childBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.5),
              width: 4,
            ),
          ),
          padding: EdgeInsets.all(Sizes.xxs.points(context)),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: childBuilder(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
