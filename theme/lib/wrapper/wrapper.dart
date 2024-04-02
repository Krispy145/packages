import 'package:flutter/material.dart';
import 'package:theme/wrapper/store.dart';
import 'package:utilities/helpers/extensions/build_context.dart';
import 'package:utilities/snackbar/configuration.dart';
import 'package:utilities/widgets/load_state/state_widget.dart';

class StyleTypeWrapper extends StatelessWidget {
  final String styleTypeName;
  final Widget Function(BuildContext context, StyleTypeThemeStore style) child;
  const StyleTypeWrapper({super.key, required this.styleTypeName, required this.child});

  @override
  Widget build(BuildContext context) {
    final store = StyleTypeThemeStore(styleTypeName: styleTypeName);
    return LoadStateBuilder(
      viewStore: store,
      errorBuilder: (context) => Builder(builder: (context) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          context.showSnackbar(configuration: SnackbarConfiguration.error(title: "Error loading $styleTypeName Style"));
        });
        return child(context, store);
      }),
      loadingBuilder: (context) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      loadedBuilder: (context) {
        return Theme(data: store.currentTheme, child: Builder(builder: (context) => child(context, store)));
      },
    );
  }
}
