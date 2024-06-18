import "package:cached_network_image/cached_network_image.dart";
import "package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart";
import "package:flutter/material.dart";
import "package:flutter_cache_manager/src/cache_managers/base_cache_manager.dart";

abstract class ImageOptions {
  final Widget Function(BuildContext context, Widget child, int?, bool)? frameBuilder;
  final Widget Function(BuildContext context, Widget child, ImageChunkEvent? imageChunk)? loadingBuilder;
  final Widget Function(BuildContext context, Object, StackTrace? stackTrace)? errorBuilder;
  // final String? semanticLabel;
  // final bool excludeFromSemantics;
  final double? width;
  final double? height;
  final Color? color;
  final Animation<double>? opacity;
  final BlendMode? colorBlendMode;
  final BoxFit? fit;
  final Alignment alignment;
  final ImageRepeat repeat;
  final Rect? centerSlice;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  // final bool isAntiAlias;
  final FilterQuality filterQuality;

  final Widget Function(BuildContext context, ImageProvider<Object> provider)? imageBuilder;
  final Widget Function(BuildContext context, String)? placeholder;
  final Widget Function(BuildContext context, String, DownloadProgress progress)? progressIndicatorBuilder;
  final Widget Function(BuildContext context, String errorMessage, Object)? errorWidget;
  final Duration? fadeOutDuration;
  final Curve fadeOutCurve;
  final Duration fadeInDuration;
  final Curve fadeInCurve;
  final BaseCacheManager? cacheManager;
  final bool useOldImageOnUrlChange;
  final Duration? placeholderFadeInDuration;
  final int? memCacheWidth;
  final int? memCacheHeight;
  final String? cacheKey;
  final int? maxWidthDiskCache;
  final int? maxHeightDiskCache;
  final void Function(Object)? errorListener;
  final ImageRenderMethodForWeb imageRenderMethodForWeb;

  const ImageOptions({
    this.frameBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    // this.semanticLabel,
    // this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    // this.isAntiAlias = false,
    this.filterQuality = FilterQuality.low,
    this.imageBuilder,
    this.placeholder,
    this.progressIndicatorBuilder,
    this.errorWidget,
    this.fadeOutDuration = const Duration(milliseconds: 1000),
    this.fadeOutCurve = Curves.easeOut,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeInCurve = Curves.easeIn,
    this.cacheManager,
    this.useOldImageOnUrlChange = false,
    this.placeholderFadeInDuration,
    this.memCacheWidth,
    this.memCacheHeight,
    this.cacheKey,
    this.maxWidthDiskCache,
    this.maxHeightDiskCache,
    this.errorListener,
    this.imageRenderMethodForWeb = ImageRenderMethodForWeb.HtmlImage,
  });
}
