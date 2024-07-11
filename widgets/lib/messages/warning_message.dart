import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";

class WarningMessage extends StatelessWidget {
  final String title;
  final String? message;
  final IconData? icon;
  final String? buttonText;
  final void Function(BuildContext context)? onButtonTap;

  const WarningMessage({super.key, required this.title, this.message, required this.icon, this.buttonText, this.onButtonTap});

  const WarningMessage.error({super.key, this.title = "Error!", this.message, this.icon = Icons.warning_rounded, this.buttonText, this.onButtonTap});

  const WarningMessage.empty({super.key, this.title = "No results", this.message, this.icon, this.buttonText, this.onButtonTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(
              icon,
              size: 48,
            ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: context.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          if (message != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                message!,
                style: context.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          if (buttonText != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: FilledButton(
                child: Text(buttonText!, style: context.textTheme.bodyMedium),
                onPressed: () => onButtonTap?.call(context),
              ),
            ),
        ],
      ),
    );
  }
}
