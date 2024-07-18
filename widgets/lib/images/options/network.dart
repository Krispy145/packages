import "package:flutter/foundation.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/helpers/tuples.dart";
import "package:widgets/images/options/abstract.dart";

class ProxyUrls {
  static const googleAPI = "https://maps.googleapis.com";

  static const List<String> list = [
    googleAPI,
  ];
}

class NetworkImageOptions extends ImageOptions {
  Map<String, String>? headers;
  final String? proxy;
  NetworkImageOptions({
    this.proxy,
    this.headers,
    super.width,
    super.height,
    super.color,
    super.colorBlendMode,
    super.fit,
    super.alignment,
    super.repeat,
    super.matchTextDirection,
    super.filterQuality,
    super.imageBuilder,
    super.placeholder,
    super.progressIndicatorBuilder,
    super.errorWidget,
    super.fadeOutDuration,
    super.fadeOutCurve,
    super.fadeInDuration,
    super.fadeInCurve,
    super.cacheManager,
    super.useOldImageOnUrlChange,
    super.placeholderFadeInDuration,
    super.memCacheWidth,
    super.memCacheHeight,
    super.cacheKey,
    super.maxWidthDiskCache,
    super.maxHeightDiskCache,
    super.errorListener,
    super.imageRenderMethodForWeb,
  }) : super(
          frameBuilder: null,
          loadingBuilder: null,
          errorBuilder: null,
          // semanticLabel: null,
          opacity: null,
          centerSlice: null,
        );

  Triple<bool, String, Map<String, String>> getProxyAndHeaders(String url) {
    final _headers = headers ?? PublicHeaders.map;
    if (kIsWeb && (proxy != null || ProxyUrls.list.any((element) => url.startsWith(element)))) {
      final _proxy = proxy ?? DigitalOasis.proxy;
      return Triple(true, "$_proxy$url", _headers);
    }
    return Triple(false, url, _headers);
  }
}
