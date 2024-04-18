import 'package:flutter/material.dart';
import 'package:utilities/sizes/spacers.dart';

class RingedMarkerWrapper extends StatelessWidget {
  final bool selected;
  final Function()? onTapped;
  final Widget Function(BuildContext) childBuilder;

  const RingedMarkerWrapper({
    Key? key,
    required this.selected,
    required this.onTapped,
    required this.childBuilder,
  }) : super(key: key);

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
              color: selected ? Colors.white : Colors.white.withOpacity(0.5),
              width: 2,
            ),
          ),
          padding: EdgeInsets.all(Sizes.xxxs.points(context)),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Padding(padding: const EdgeInsets.all(8.0), child: childBuilder(context)),
            ),
          ),
        ),
      ),
    );
  }
}
