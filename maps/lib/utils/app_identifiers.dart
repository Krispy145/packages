import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:latlong2/latlong.dart";
import "package:utilities/stores/launch_app_store.dart";
import "package:utilities/utils/app_identifier.dart";

enum MapApp {
  appleMaps,
  googleMaps,
  waze,
  uber,
  lyft,
  cityMapper,
  freeNow;

  IconData get icon {
    switch (this) {
      case MapApp.appleMaps:
        return FontAwesomeIcons.apple;
      case MapApp.googleMaps:
        return FontAwesomeIcons.google;
      case MapApp.waze:
        return FontAwesomeIcons.waze;
      case MapApp.uber:
        return FontAwesomeIcons.uber;
      case MapApp.lyft:
        return FontAwesomeIcons.lyft;
      case MapApp.cityMapper:
        return FontAwesomeIcons.mapLocationDot;
      case MapApp.freeNow:
        return FontAwesomeIcons.taxi;
    }
  }

  String get displayName {
    switch (this) {
      case MapApp.appleMaps:
        return "Apple Maps";
      case MapApp.googleMaps:
        return "Google Maps";
      case MapApp.waze:
        return "Waze";
      case MapApp.uber:
        return "Uber";
      case MapApp.lyft:
        return "Lyft";
      case MapApp.cityMapper:
        return "City Mapper";
      case MapApp.freeNow:
        return "Free Now";
    }
  }

  Color get backgroundColor {
    switch (this) {
      case MapApp.appleMaps:
        return Colors.black;
      case MapApp.googleMaps:
        return const Color(0xFF0058E7);
      case MapApp.waze:
        return const Color(0xFF05ACD9);
      case MapApp.uber:
        return Colors.white;
      case MapApp.lyft:
        return const Color(0xFFFE01BF);
      case MapApp.cityMapper:
        return const Color(0xFF37AB31);
      case MapApp.freeNow:
        return const Color(0xFFF3030B);
    }
  }

  Color get foregroundColor {
    switch (this) {
      case MapApp.appleMaps:
        return Colors.white;
      case MapApp.googleMaps:
        return Colors.white;
      case MapApp.waze:
        return Colors.white;
      case MapApp.uber:
        return Colors.black;
      case MapApp.lyft:
        return Colors.white;
      case MapApp.cityMapper:
        return Colors.white;
      case MapApp.freeNow:
        return Colors.white;
    }
  }
}

class MapAppIdentifier extends AppIdentifier {
  final MapApp app;
  MapAppIdentifier.appleMaps({LatLng? destination, String? query})
      : app = MapApp.appleMaps,
        super.launcher(
          androidPackageName: null,
          iosUrlScheme: "maps://",
          appStoreLink: "https://apps.apple.com/us/app/apple-maps/id915056765",
          deeplink: "http://maps.apple.com/",
          openStore: true,
          queryParams: {
            if (destination != null)
              "daddr": "${destination.latitude},${destination.longitude}",
            if (query != null) "q": query,
          },
        );

  MapAppIdentifier.googleMaps({LatLng? destination, String? query})
      : app = MapApp.googleMaps,
        super.launcher(
          androidPackageName: "com.google.android.apps.maps",
          iosUrlScheme: "comgooglemaps://",
          appStoreLink: "https://apps.apple.com/us/app/google-maps/id585027354",
          deeplink: "https://www.google.com/maps",
          openStore: true,
          queryParams: {
            if (destination != null)
              "daddr": "${destination.latitude},${destination.longitude}",
            if (query != null) "q": query,
          },
        );

  MapAppIdentifier.waze({
    LatLng? destination,
  })  : app = MapApp.waze,
        super.launcher(
          androidPackageName: "com.waze",
          iosUrlScheme: "waze://",
          appStoreLink:
              "https://apps.apple.com/us/app/waze-navigation-live-traffic/id323229106",
          deeplink: "https://waze.com/ul",
          openStore: true,
          queryParams: {
            if (destination != null)
              "ll": "${destination.latitude},${destination.longitude}",
            if (destination != null) "navigate": "yes",
            if (destination != null) "zoom": "17",
          },
        );

  MapAppIdentifier.uber({LatLng? pickup, LatLng? destination})
      : app = MapApp.uber,
        super.launcher(
          androidPackageName: "com.ubercab",
          iosUrlScheme: "uber://",
          appStoreLink: "https://apps.apple.com/us/app/uber/id368677368",
          deeplink: "https://m.uber.com/ul/",
          openStore: true,
          queryParams: {
            if (destination != null) "action": "setPickup",
            if (pickup != null) "pickup[latitude]": "${pickup.latitude}",
            if (pickup != null) "pickup[longitude]": "${pickup.longitude}",
            if (pickup == null) "pickup": "my_location",
            if (destination != null)
              "dropoff[latitude]": "${destination.latitude}",
            if (destination != null)
              "dropoff[longitude]": "${destination.longitude}",
          },
        );

  MapAppIdentifier.lyft({LatLng? pickup, LatLng? destination})
      : app = MapApp.lyft,
        super.launcher(
          androidPackageName: "me.lyft.android",
          iosUrlScheme: "lyft://",
          appStoreLink: "https://apps.apple.com/us/app/lyft/id529379082",
          deeplink: "https://www.lyft.com/ride-with-lyft",
          openStore: true,
          queryParams: {
            if (destination != null)
              "destination[latitude]": "${destination.latitude}",
            if (destination != null)
              "destination[longitude]": "${destination.longitude}",
            if (pickup != null) "pickup[latitude]": "${pickup.latitude}",
            if (pickup != null) "pickup[longitude]": "${pickup.longitude}",
          },
        );

  MapAppIdentifier.cityMapper({
    LatLng? destination,
    String? endName,
    String? endAddress,
  })  : app = MapApp.cityMapper,
        super.launcher(
          androidPackageName: "com.citymapper.app.release",
          iosUrlScheme: "citymapper://directions",
          appStoreLink: "https://apps.apple.com/us/app/citymapper/id469463298",
          deeplink: "https://citymapper.com/directions",
          openStore: true,
          queryParams: {
            if (destination != null)
              "endcoord": "${destination.latitude},${destination.longitude}",
            if (endName != null) "endname": endName,
            if (endAddress != null) "endaddress": endAddress,
          },
        );

  MapAppIdentifier.freeNow()
      : app = MapApp.freeNow,
        super.launcher(
          androidPackageName: "com.mytaxi.driver",
          iosUrlScheme: "mytaxi://",
          deeplink: "https://www.free-now.com/uk/ride/download-app/",
          appStoreLink:
              "https://apps.apple.com/us/app/mytaxi-the-taxi-app/id357852748",
          openStore: true,
        );

  @override
  IconButton buildAppIconButton() {
    final appLauncherStore = AppLauncherStore();
    return IconButton(
      onPressed: () => appLauncherStore.launchApp(identifier: this),
      icon: Icon(app.icon),
    );
  }

  @override
  TextButton buildAppTextButton({bool showIcon = true}) {
    final appLauncherStore = AppLauncherStore();
    if (showIcon) {
      return TextButton.icon(
        onPressed: () => appLauncherStore.launchApp(identifier: this),
        icon: Icon(app.icon),
        label: Text(app.displayName),
      );
    } else {
      return TextButton(
        onPressed: () => appLauncherStore.launchApp(identifier: this),
        child:
            Text(app.displayName, style: TextStyle(color: app.foregroundColor)),
      );
    }
  }

  @override
  ElevatedButton buildAppElevatedButton({
    bool showIcon = true,
    bool displayIfInstalled = true,
  }) {
    final appLauncherStore = AppLauncherStore();
    final style = ButtonStyle(
      backgroundColor: WidgetStateProperty.all(app.backgroundColor),
      foregroundColor: WidgetStateProperty.all(app.foregroundColor),
      minimumSize: WidgetStateProperty.all(
        const Size(double.maxFinite, 48),
      ),
    );
    if (showIcon) {
      return ElevatedButton.icon(
        onPressed: () => appLauncherStore.launchApp(identifier: this),
        icon: Icon(app.icon),
        style: style,
        label: Text(app.displayName),
      );
    } else {
      return ElevatedButton(
        onPressed: () => appLauncherStore.launchApp(identifier: this),
        style: style,
        child: Text(app.displayName),
      );
    }
  }

  @override
  Future<ElevatedButton?> buildAppElevationButtonIfInstalled() {
    final appLauncherStore = AppLauncherStore();
    return appLauncherStore.checkIsAppInstalled(identifier: this).then((value) {
      if (value) {
        return buildAppElevatedButton();
      } else {
        return null;
      }
    });
  }
}
