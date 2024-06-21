import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:responsive_framework/responsive_framework.dart";
import "package:theme/app/store.dart";
import "package:utilities/sizes/screen_size.dart";
import "package:utilities/widgets/load_state/builder.dart";

/// [ThemedMaterialApp] is a wrapper for [MaterialApp] that allows you to use [ThemeData] and
class ThemedMaterialApp extends StatelessWidget {
  /// [materialAppBuilder] is a function that takes in the lightTheme, darkTheme, and
  /// currentThemeMode and returns a [MaterialApp].
  final MaterialApp Function(
    ThemeData lightTheme,
    ThemeData darkTheme,
    ThemeMode currentThemeMode,
  ) materialAppBuilder;

  /// [themeStore] is an instance of [ThemeStateStore].
  final ThemeStateStore themeStore;

  final Color? initialBackgroundColor;

  /// [ThemedMaterialApp] constructor
  const ThemedMaterialApp({
    super.key,
    required this.materialAppBuilder,
    required this.themeStore,
    this.initialBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: themeStore,
      loadedBuilder: (context) => Observer(
        builder: (context) {
          return ResponsiveBreakpoints.builder(
            breakpoints: ScreenSize.defaultBreakpoints,
            child: materialAppBuilder(
              themeStore.lightTheme,
              themeStore.darkTheme,
              themeStore.currentThemeMode,
            ),
          );
        },
      ),
      loadingBuilder: (context) => MaterialApp(
        home: Scaffold(
          backgroundColor: initialBackgroundColor,
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      errorBuilder: (context, error) => MaterialApp(
        home: Scaffold(
          backgroundColor: initialBackgroundColor,
          body: Center(child: Text(error)),
        ),
      ),
    );
  }
}
