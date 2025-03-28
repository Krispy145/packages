import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_inappwebview/flutter_inappwebview.dart";

import "store.dart";

/// [WebBrowserBuilder] of the app.
class WebBrowserBuilder extends StatelessWidget {
  final WebBrowserStore store;
  final Color? backgroundColor;
  final double? opacity;
  final AppBar? appBar;
  final FutureOr<void> Function(String url)? onBackPressed;

  const WebBrowserBuilder({
    super.key,
    required this.store,
    this.backgroundColor,
    this.opacity,
    this.appBar,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ??
          AppBar(
            backgroundColor: backgroundColor?.withValues(alpha: opacity ?? 0.4) ?? Theme.of(context).appBarTheme.backgroundColor?.withValues(alpha: 0.4),
            title: Text(store.title),
            leading: onBackPressed != null
                ? IconButton(
                    onPressed: () => onBackPressed!(store.url),
                    icon: const Icon(Icons.arrow_back),
                  )
                : null,
          ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(store.url),
        ),
      ),
    );
  }
}
