import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/app/app.dart";

class AppThemeWrapper extends StatelessWidget {
  final Widget child;
  const AppThemeWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Theme(
          data: AppTheme.currentTheme,
          child: child,
        );
      },
    );
  }
}
