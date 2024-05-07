import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_inappwebview/flutter_inappwebview.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/extensions/build_context.dart";

import "store.dart";

/// [InstagramAuthenticationView] of the app.
@RoutePage()
class InstagramAuthenticationView extends StatelessWidget {
  final InstagramUserStore store;

  /// [InstagramAuthenticationView] constructor.
  const InstagramAuthenticationView({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  "Instagram Authentication",
                  style: context.textTheme.titleMedium,
                ),
              ],
            ),
            Expanded(
              child: InAppWebView(
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
              ),
            ),
          ],
        );
      },
    );
  }
}
