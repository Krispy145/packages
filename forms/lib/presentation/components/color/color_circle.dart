import "package:flutter/material.dart";
import "package:utilities/sizes/spacers.dart";

/// [ColorCircle] for the ColorSchemesView.
class ColorCircle extends StatelessWidget {
  /// [color] of the circle.
  final Color color;

  /// [onTap] callback.
  final VoidCallback? onTap;

  /// [label] of the circle.
  final String? label;

  final Color? contrastColor;

  /// [ColorCircle] constructor.
  const ColorCircle({
    super.key,
    required this.color,
    this.label,
    this.onTap,
    this.contrastColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 160,
            height: 80,
            decoration: BoxDecoration(
              color: color,
              // shape: BoxShape.circle,
            ),
            child: contrastColor != null
                ? Center(
                    child: Text(
                      label ?? "Contrast",
                      style: TextStyle(
                        color: contrastColor,
                        fontSize: 12,
                      ),
                    ),
                  )
                : null,
          ),
          Sizes.xs.spacer(),
          if (label != null)
            Text(
              label!,
              style: const TextStyle(fontSize: 12),
            ),
        ],
      ),
    );
  }
}
