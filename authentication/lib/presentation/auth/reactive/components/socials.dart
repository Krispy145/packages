import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/presentation/auth/components/social_types.dart";
import "package:authentication/presentation/auth/components/socials.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/snackbar/configuration.dart";

/// UI Component to create social login form
class ReactiveSocialButtons<T extends UserModel> extends StatelessWidget {
  /// The [AuthenticationRepository] to be used for the auth action
  final AuthenticationRepository<T> repository;

  /// List of social providers to show in the form
  final List<SocialButtonType> socialTypes;

  /// Method to be called when the auth action is success
  final void Function(UserModel userModel) onSuccess;

  /// Whether or not to color the social buttons in their respective colors
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

  const ReactiveSocialButtons({
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
    if (socialTypes.isEmpty) {
      return ErrorWidget(Exception("Social provider list cannot be empty"));
    }

    final authButtons = List.generate(
      socialTypes.length,
      (index) {
        final socialType = socialTypes[index];
        final backgroundColor = colored ? socialType.backgroundColor : null;
        final iconColor = colored ? Colors.white : null;

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
            final paramsMap = socialType.params.toMap();
            final params = repository.convertDataTypeFromMap(paramsMap);
            final user = await repository.signIn(params: params);
            if (user != null) {
              onSuccess(user);
            }
          } on AuthenticationException catch (error) {
            if (onError == null && context.mounted) {
              context.showSnackbar(
                SnackbarConfiguration.error(title: error.message),
              );
            } else {
              onError?.call(error);
            }
          } catch (error) {
            if (onError == null && context.mounted) {
              context.showSnackbar(
                SnackbarConfiguration.error(
                  title: "Unexpected error has occurred: $error",
                ),
              );
            } else {
              onError?.call(error);
            }
          }
        }

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
