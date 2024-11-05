import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";

class WarningMessage extends StatelessWidget {
  final String title;
  final String? message;
  final IconData? icon;
  final double iconSize;
  final String? buttonText;
  final void Function(BuildContext context)? onButtonTap;

  const WarningMessage({super.key, required this.title, this.message, required this.icon, this.buttonText, this.onButtonTap, this.iconSize = 48});

  const WarningMessage.error({super.key, this.title = "Error!", this.message, this.icon = Icons.warning_rounded, this.buttonText, this.onButtonTap, this.iconSize = 48});

  const WarningMessage.empty({super.key, this.title = "No results", this.message, this.icon, this.buttonText, this.onButtonTap, this.iconSize = 48});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: iconSize,
            ),
            Sizes.xs.spacer(),
          ],
          Text(
            title,
            style: context.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          if (message != null) ...[
            Sizes.xs.spacer(),
            Text(
              message!,
              style: context.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
          if (buttonText != null) ...[
            Sizes.m.spacer(),
            FilledButton(
              child: Text(buttonText!, style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
              onPressed: () => onButtonTap?.call(context),
            ),
          ],
        ],
      ),
    );
  }
}
