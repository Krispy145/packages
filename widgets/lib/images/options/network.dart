import "package:flutter/foundation.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/helpers/tuples.dart";
import "package:widgets/images/options/abstract.dart";

class ProxyUrls {
  static const googleAPI = "https://maps.googleapis.com";
  static const ytThumbnails = "https://i.ytimg.com";

  static const List<String> list = [
    googleAPI,
    ytThumbnails,
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
    super.borderRadius,
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
    if (kIsWeb && proxy != null) {
      //if (kIsWeb && (proxy != null || ProxyUrls.list.any((element) => url.startsWith(element)))) {
      final _proxy = proxy!; // ?? WebServices.proxy;
      return Triple(true, "$_proxy$url", _headers);
    }
    return Triple(false, url, _headers);
  }

  NetworkImageOptions copyWith({
    Map<String, String>? headers,
    String? proxy,
  }) {
    return NetworkImageOptions(
      headers: headers ?? this.headers,
      proxy: proxy ?? this.proxy,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      filterQuality: filterQuality,
      imageBuilder: imageBuilder,
      placeholder: placeholder,
      progressIndicatorBuilder: progressIndicatorBuilder,
      errorWidget: errorWidget,
      fadeOutDuration: fadeOutDuration,
      fadeOutCurve: fadeOutCurve,
      fadeInDuration: fadeInDuration,
      fadeInCurve: fadeInCurve,
      cacheManager: cacheManager,
      useOldImageOnUrlChange: useOldImageOnUrlChange,
      placeholderFadeInDuration: placeholderFadeInDuration,
      memCacheWidth: memCacheWidth,
      memCacheHeight: memCacheHeight,
      cacheKey: cacheKey,
      maxWidthDiskCache: maxWidthDiskCache,
      maxHeightDiskCache: maxHeightDiskCache,
      errorListener: errorListener,
      imageRenderMethodForWeb: imageRenderMethodForWeb,
    );
  }
}
