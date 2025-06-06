import "package:flutter/material.dart";
import "package:get_it/get_it.dart";
import "package:theme/app/store.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/edge_insets.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

/// [SnackbarMessage] is a class that allows you to display a snackbar.
class SnackbarMessage {
  /// [context] is the [BuildContext] that will be used to display the snackbar.
  final BuildContext context;

  /// [SnackbarMessage] constructor
  const SnackbarMessage(this.context);

  ThemeStateStore get themeStore => GetIt.instance<ThemeStateStore>();

  /// [show] is a method that displays a snackbar.
  void show({
    required SnackbarConfiguration configuration,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      _getsnackbarMessage(configuration),
    );
  }

  SnackBar _getsnackbarMessage(SnackbarConfiguration configuration) {
    List<Widget> buildLeadingIcon() {
      if (configuration.leadingIcon == null) {
        return [
          Sizes.l.spacer(axis: Axis.horizontal),
        ];
      }
      return [
        Sizes.s.spacer(axis: Axis.horizontal),
        configuration.leadingIcon!,
        Sizes.s.spacer(axis: Axis.horizontal),
      ];
    }

    List<Widget> buildTrailingIcon() {
      if (configuration.trailingIcon == null) {
        return [
          Sizes.l.spacer(axis: Axis.horizontal),
        ];
      }

      return [
        Sizes.s.spacer(axis: Axis.horizontal),
        configuration.trailingIcon!,
        Sizes.s.spacer(axis: Axis.horizontal),
      ];
    }

    Color getTitleColor() {
      return configuration.titleColor ??
          configuration.style.onBackgroundColor() ??
          (configuration.color != null ? Colors.white : Colors.black);
    }

    Color getSubtitleColor() {
      return configuration.subtitleColor ??
          configuration.style.onBackgroundColor() ??
          (configuration.color != null ? Colors.white : Colors.black);
    }

    Color progressBarColor() {
      return configuration.color ?? configuration.style.backgroundColor();
    }

    Container buildProgressBar() {
      return Container(
        height: 2,
        margin: AppEdgeInsets.symmetric(context, horizontal: Sizes.s),
        width: context.size!.width * ((configuration.progress ?? 0) / 100) - 40,
        decoration: BoxDecoration(
          color: progressBarColor(),
          borderRadius: BorderRadius.circular(2),
        ),
      );
    }

    double getWidth(BuildContext context) {
      return context.screenWidth -
          (2 * Sizes.l.points(context, axis: Axis.horizontal));
    }

    return SnackBar(
      width: getWidth(context),
      padding: EdgeInsets.zero,
      content: GestureDetector(
        onTap: configuration.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: configuration.color ??
                    configuration.style.backgroundColor(),
                borderRadius: BorderRadius.circular(32),
              ),
              constraints: BoxConstraints(
                maxWidth: getWidth(context) < 600 ? getWidth(context) : 600,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: configuration.progress != null
                          ? MainAxisSize.max
                          : MainAxisSize.min,
                      children: [
                        ...buildLeadingIcon(),
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                configuration.title,
                                style: context.textTheme.titleMedium?.copyWith(
                                  color: getTitleColor(),
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                              if (configuration.subtitle != null) ...[
                                Sizes.xxxxs.spacer(),
                                Text(
                                  configuration.subtitle!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: getSubtitleColor(),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...buildTrailingIcon(),
                ],
              ),
            ),
            if (configuration.progress != null) buildProgressBar(),
          ],
        ),
      ),
      duration: configuration.duration ?? const Duration(seconds: 3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
