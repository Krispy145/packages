import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";
import "package:url_launcher/url_launcher.dart";
import "package:utilities/sizes/spacers.dart";

class LYMarketingButton extends StatelessWidget {
  final String assetLogoPath;
  final String companyName;
  final String websiteUrl;
  const LYMarketingButton({
    required this.assetLogoPath,
    required this.companyName,
    required this.websiteUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () => launchUrl(Uri.parse(websiteUrl)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(height: 40),
                  child: Image.asset(
                    assetLogoPath,
                    package: "widgets",
                    fit: BoxFit.contain,
                  ),
                ),
                Sizes.s.spacer(axis: Axis.horizontal),
                Text(
                  "Powered by $companyName",
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.colorScheme.onSurface.withOpacity(0.75),
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
