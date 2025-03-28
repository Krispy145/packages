import "package:external_app_launcher/external_app_launcher.dart";
import "package:mobx/mobx.dart";
import "package:universal_io/io.dart";
import "package:url_launcher/url_launcher.dart";
import "package:utilities/utils/app_identifier.dart";

part "launch_app_store.g.dart";

/// [AppLauncherStore] is a class that uses [_AppLauncherStore] to manage the state of the AppLauncher feature.
class AppLauncherStore = _AppLauncherStore with _$AppLauncherStore;

/// [_AppLauncherStore] is a class that manages the state of the AppLauncher feature.
abstract class _AppLauncherStore with Store {
  @observable
  bool isAppInstalled = false;

  @observable
  AppIdentifier? appIdentifier;

  @action
  Future<bool> checkIsAppInstalled({required AppIdentifier identifier}) async {
    appIdentifier = identifier;
    final result = await LaunchApp.isAppInstalled(
      androidPackageName: identifier.androidPackageName,
      iosUrlScheme: identifier.iosUrlScheme,
    ) as bool;
    isAppInstalled = result;
    return result;
  }

  @action
  Future<bool> launchAppFromDeepLink({
    required AppIdentifier identifier,
  }) async {
    return launchUrl(Uri.parse(identifier.buildDeepLink()));
  }

  @action
  Future<void> launchApp({required AppIdentifier identifier}) async {
    final result = await checkIsAppInstalled(identifier: identifier);
    if (result || ((identifier.openStore ?? false) && !Platform.isAndroid)) {
      final url = identifier.buildUrl();
      await LaunchApp.openApp(
        iosUrlScheme: url,
        androidPackageName: identifier.androidPackageName,
        openStore: identifier.openStore,
        appStoreLink: identifier.appStoreLink,
      );
    } else if (identifier.deeplink != null) {
      await launchAppFromDeepLink(identifier: identifier);
    }
  }
}
