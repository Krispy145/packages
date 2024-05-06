import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_inappwebview/flutter_inappwebview.dart";
import "package:flutter_mobx/flutter_mobx.dart";

import "store.dart";

/// [InstagramAuthenticationView] of the app.
@RoutePage()
class InstagramAuthenticationView extends StatelessWidget {
  final InstagramUserStore store;

  /// [InstagramAuthenticationView] constructor.
  const InstagramAuthenticationView({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Observer(
          builder: (context) {
            return InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri.uri(store.initialUri),
              ),
              onLoadStart: (controller, url) async {
                await store.getAccessTokenFromCode(url).then((value) {
                  if (store.isAuthenticated) {
                    Navigator.of(context).pop();
                  }
                });
              },
              onLoadStop: (controller, url) async {
                await store.getAccessTokenFromCode(url).then((value) {
                  if (store.isAuthenticated) {
                    Navigator.of(context).pop();
                  }
                });
              },
            );
          },
        ),
      ),
    );
  }
}
