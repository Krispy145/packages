import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/helpers/exception.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/snackbar/configuration.dart";

import "social_types.dart";

enum SocialButtonVariant {
  /// Displays the social login buttons horizontally with icons.
  icon,

  /// Displays the social login buttons vertically with icons and text labels.
  iconAndText,
}

/// UI Component to create social login form
class SocialButtons extends StatelessWidget {
  /// The [AuthenticationRepository] to be used for the auth action
  final AuthenticationRepository repository;

  /// List of social providers to show in the form
  final List<SocialButtonType> socialTypes;

  /// Method to be called when the auth action is success
  final void Function(UserModel userModel) onSuccess;

  /// Whether or not to color the social buttons in their respecful colors
  ///
  /// You can control the appearance through `ElevatedButtonTheme` when set to false.
  final bool colored;

  /// Whether or not to show the icon only or icon and text
  final SocialButtonVariant socialButtonVariant;

  // /// `redirectUrl` to be passed to the `.signIn()` or `signUp()` methods
  // ///
  // /// Typically used to pass a DeepLink
  // final String? redirectUrl;

  /// Method to be called when the auth action threw an excepction
  final void Function(Object error)? onError;

  const SocialButtons({
    super.key,
    required this.repository,
    required this.socialTypes,
    required this.onSuccess,
    this.colored = true,
    // this.redirectUrl,
    this.onError,
    this.socialButtonVariant = SocialButtonVariant.iconAndText,
  });

  @override
  Widget build(BuildContext context) {
    final types = socialTypes;
    final coloredBackground = colored;

    if (types.isEmpty) {
      return ErrorWidget(Exception("Social provider list cannot be empty"));
    }

    final authButtons = List.generate(
      types.length,
      (index) {
        final socialType = types[index];

        final foregroundColor = coloredBackground ? Colors.white : null;
        final backgroundColor = coloredBackground ? socialType.backgroundColor : null;
        final overlayColor = coloredBackground ? Colors.white10 : null;

        final iconColor = coloredBackground ? Colors.white : null;

        final Widget iconWidget = SizedBox(
          height: 48,
          width: 48,
          child: Icon(
            socialType.iconData,
            color: iconColor,
          ),
        );

        Future<void> onAuthButtonPressed() async {
          try {
            await repository.signIn(params: socialType.params);
          } on AuthenticationException catch (error) {
            if (onError == null && context.mounted) {
              context.showSnackbar(
                configuration: SnackbarConfiguration.error(title: error.message),
              );
            } else {
              onError?.call(error);
            }
          } catch (error) {
            if (onError == null && context.mounted) {
              context.showSnackbar(
                configuration: SnackbarConfiguration.error(
                  title: "Unexpected error has occurred: $error",
                ),
              );
            } else {
              onError?.call(error);
            }
          }
        }

        final authButtonStyle = ButtonStyle(
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          overlayColor: MaterialStateProperty.all(overlayColor),
          iconColor: MaterialStateProperty.all(iconColor),
        );

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: socialButtonVariant == SocialButtonVariant.icon
              ? Material(
                  shape: const CircleBorder(),
                  elevation: 2,
                  color: backgroundColor,
                  child: InkResponse(
                    radius: 24,
                    onTap: onAuthButtonPressed,
                    child: iconWidget,
                  ),
                )
              : ElevatedButton.icon(
                  icon: iconWidget,
                  style: authButtonStyle,
                  onPressed: onAuthButtonPressed,
                  label: Text("Continue with ${socialType.displayName}"),
                ),
        );
      },
    );

    return socialButtonVariant == SocialButtonVariant.icon
        ? Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: authButtons,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: authButtons,
          );
  }
}
