import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";
import "package:url_launcher/url_launcher.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/sizes/spacers.dart";

class DOMarketingButton extends StatelessWidget {
  const DOMarketingButton({
    super.key,
  });
  final name = "packages/widgets/lib/assets/images/do-circle-icon.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () => launchUrl(Uri.parse(DigitalOasis.website)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(height: 60),
                  child: Image.asset(
                    name,
                    fit: BoxFit.contain,
                  ),
                ),
                Sizes.s.spacer(vertical: false),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Powered by Digital Oasis",
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colorScheme.onSurface.withOpacity(0.75),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
