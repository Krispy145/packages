import "dart:io";

import "package:cached_network_image/cached_network_image.dart";
import "package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";
import "package:widgets/images/options/abstract.dart";
import "package:widgets/images/options/asset.dart";
import "package:widgets/images/options/file.dart";
import "package:widgets/images/options/memory.dart";
import "package:widgets/images/options/network.dart";

enum ImageType { file, memory, asset, network }

class LYImage extends StatelessWidget {
  final ImageType imageType;
  final String? assetPath;
  final File? file;
  final Uint8List? memory;
  final String? url;

  final ImageOptions? options;

  const LYImage._({
    required this.imageType,
    this.assetPath,
    this.file,
    this.memory,
    this.url,
    this.options,
  });

  factory LYImage.file(
    File file, {
    FileImageOptions? options,
  }) {
    return LYImage._(
      imageType: ImageType.file,
      file: file,
      options: options,
    );
  }

  factory LYImage.memory(
    Uint8List memory, {
    MemoryImageOptions? options,
  }) {
    return LYImage._(
      imageType: ImageType.memory,
      memory: memory,
      options: options,
    );
  }

  factory LYImage.asset(
    String assetPath, {
    AssetImageOptions? options,
  }) {
    return LYImage._(
      imageType: ImageType.asset,
      assetPath: assetPath,
      options: options,
    );
  }

  factory LYImage.network(
    String? url, {
    NetworkImageOptions? options,
  }) {
    return LYImage._(
      imageType: ImageType.network,
      url: url,
      options: options,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (imageType) {
      case ImageType.file:
        final _assetOptions =
            options as AssetImageOptions? ?? const AssetImageOptions();
        return Image.file(
          file!,
          frameBuilder: _assetOptions.frameBuilder,
          errorBuilder: _assetOptions.errorBuilder ??
              (context, error, stackTrace) => buildDefaultErrorImage(
                    context,
                    _assetOptions,
                    error.toString(),
                    error,
                  ),
          width: _assetOptions.width,
          height: _assetOptions.height,
          color: _assetOptions.color,
          opacity: _assetOptions.opacity,
          colorBlendMode: _assetOptions.colorBlendMode,
          fit: _assetOptions.fit,
          alignment: _assetOptions.alignment,
          repeat: _assetOptions.repeat,
          centerSlice: _assetOptions.centerSlice,
          matchTextDirection: _assetOptions.matchTextDirection,
          gaplessPlayback: _assetOptions.gaplessPlayback,
          filterQuality: _assetOptions.filterQuality,
        );
      case ImageType.memory:
        final _memoryOptions =
            options as MemoryImageOptions? ?? const MemoryImageOptions();
        return Image.memory(
          memory!,
          frameBuilder: _memoryOptions.frameBuilder,
          errorBuilder: _memoryOptions.errorBuilder ??
              (context, error, stackTrace) => buildDefaultErrorImage(
                    context,
                    _memoryOptions,
                    error.toString(),
                    error,
                  ),
          width: _memoryOptions.width,
          height: _memoryOptions.height,
          color: _memoryOptions.color,
          opacity: _memoryOptions.opacity,
          colorBlendMode: _memoryOptions.colorBlendMode,
          fit: _memoryOptions.fit,
          alignment: _memoryOptions.alignment,
          repeat: _memoryOptions.repeat,
          centerSlice: _memoryOptions.centerSlice,
          matchTextDirection: _memoryOptions.matchTextDirection,
          gaplessPlayback: _memoryOptions.gaplessPlayback,
          filterQuality: _memoryOptions.filterQuality,
        );
      case ImageType.asset:
        final _assetOptions =
            options as AssetImageOptions? ?? const AssetImageOptions();
        return Image.asset(
          assetPath!,
          frameBuilder: _assetOptions.frameBuilder,
          errorBuilder: _assetOptions.errorBuilder ??
              (context, error, stackTrace) => buildDefaultErrorImage(
                    context,
                    _assetOptions,
                    error.toString(),
                    error,
                  ),
          width: _assetOptions.width,
          height: _assetOptions.height,
          color: _assetOptions.color,
          opacity: _assetOptions.opacity,
          colorBlendMode: _assetOptions.colorBlendMode,
          fit: _assetOptions.fit,
          alignment: _assetOptions.alignment,
          repeat: _assetOptions.repeat,
          centerSlice: _assetOptions.centerSlice,
          matchTextDirection: _assetOptions.matchTextDirection,
          gaplessPlayback: _assetOptions.gaplessPlayback,
          filterQuality: _assetOptions.filterQuality,
        );
      case ImageType.network:
        final _networkOptions =
            options as NetworkImageOptions? ?? NetworkImageOptions();
        if (url == null) {
          return _networkOptions.placeholder?.call(context, "") ??
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colorScheme.inverseSurface,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  color: context.colorScheme.outline.withValues(alpha: 0.1),
                  child: Icon(
                    Icons.image,
                    color: context.colorScheme.onSecondaryContainer,
                  ),
                ),
              );
        }
        final _isUsingProxy = _networkOptions.getProxyAndHeaders(url!).first;
        final _finalUrl = _networkOptions.getProxyAndHeaders(url!).second;
        final _httpHeaders = _networkOptions.getProxyAndHeaders(url!).third;
        debugPrint("First try at loading Image");
        return CachedNetworkImage(
          imageUrl: _finalUrl,
          httpHeaders: _httpHeaders,
          width: _networkOptions.width,
          height: _networkOptions.height,
          color: _networkOptions.color,
          colorBlendMode: _networkOptions.colorBlendMode,
          fit: _networkOptions.fit,
          alignment: _networkOptions.alignment,
          repeat: _networkOptions.repeat,
          matchTextDirection: _networkOptions.matchTextDirection,
          filterQuality: _networkOptions.filterQuality,
          imageBuilder: _networkOptions.imageBuilder,
          placeholder: _networkOptions.placeholder,
          progressIndicatorBuilder: _networkOptions.progressIndicatorBuilder,
          errorWidget: _buildErrorImageProxyBuilder,
          fadeOutDuration: _networkOptions.fadeOutDuration,
          fadeOutCurve: _networkOptions.fadeOutCurve,
          fadeInDuration: _networkOptions.fadeInDuration,
          fadeInCurve: _networkOptions.fadeInCurve,
          cacheManager: _networkOptions.cacheManager,
          useOldImageOnUrlChange: _networkOptions.useOldImageOnUrlChange,
          placeholderFadeInDuration: _networkOptions.placeholderFadeInDuration,
          memCacheWidth: _networkOptions.memCacheWidth,
          memCacheHeight: _networkOptions.memCacheHeight,
          cacheKey: _networkOptions.cacheKey,
          maxWidthDiskCache: _networkOptions.maxWidthDiskCache,
          maxHeightDiskCache: _networkOptions.maxHeightDiskCache,
          errorListener: _networkOptions.errorListener,
          imageRenderMethodForWeb: _isUsingProxy
              ? ImageRenderMethodForWeb.HttpGet
              : _networkOptions.imageRenderMethodForWeb,
        );
    }
  }

  CachedNetworkImage _buildErrorImageProxyBuilder(
    BuildContext context,
    String error,
    Object object,
  ) {
    final _networkOptions = options as NetworkImageOptions? ??
        NetworkImageOptions(); //.copyWith(proxy: WebServices.proxy);
    final _isUsingProxy = _networkOptions.getProxyAndHeaders(url!).first;
    final _finalUrl = _networkOptions.getProxyAndHeaders(url!).second;
    final _httpHeaders = _networkOptions.getProxyAndHeaders(url!).third;
    debugPrint("Second try at loading Image");
    return CachedNetworkImage(
      imageUrl: _finalUrl,
      httpHeaders: _httpHeaders,
      width: _networkOptions.width,
      height: _networkOptions.height,
      color: _networkOptions.color,
      colorBlendMode: _networkOptions.colorBlendMode,
      fit: _networkOptions.fit,
      alignment: _networkOptions.alignment,
      repeat: _networkOptions.repeat,
      matchTextDirection: _networkOptions.matchTextDirection,
      filterQuality: _networkOptions.filterQuality,
      imageBuilder: _networkOptions.imageBuilder,
      placeholder: _networkOptions.placeholder,
      progressIndicatorBuilder: _networkOptions.progressIndicatorBuilder,
      errorWidget: _networkOptions.errorWidget ??
          (context, error, stackTrace) => buildDefaultErrorImage(
                context,
                _networkOptions,
                error,
                stackTrace,
              ),
      fadeOutDuration: _networkOptions.fadeOutDuration,
      fadeOutCurve: _networkOptions.fadeOutCurve,
      fadeInDuration: _networkOptions.fadeInDuration,
      fadeInCurve: _networkOptions.fadeInCurve,
      cacheManager: _networkOptions.cacheManager,
      useOldImageOnUrlChange: _networkOptions.useOldImageOnUrlChange,
      placeholderFadeInDuration: _networkOptions.placeholderFadeInDuration,
      memCacheWidth: _networkOptions.memCacheWidth,
      memCacheHeight: _networkOptions.memCacheHeight,
      cacheKey: _networkOptions.cacheKey,
      maxWidthDiskCache: _networkOptions.maxWidthDiskCache,
      maxHeightDiskCache: _networkOptions.maxHeightDiskCache,
      errorListener: _networkOptions.errorListener,
      imageRenderMethodForWeb: _isUsingProxy
          ? ImageRenderMethodForWeb.HttpGet
          : _networkOptions.imageRenderMethodForWeb,
    );
  }

  Widget buildDefaultErrorImage(
    BuildContext context,
    ImageOptions options,
    String error,
    Object stackTrace,
  ) {
    debugPrint("Third try at loading Image");
    return Image.network(
      error,
      fit: options.fit,
      width: options.width,
      height: options.height,
      errorBuilder: (context, errorObject, stackTrace) {
        debugPrint(
          "Could not load error image after 3 tries: URL: $error\nERROR: $errorObject\nSTACKTRACE: $stackTrace",
        );
        return options.errorBuilder?.call(context, error, stackTrace) ??
            const Center(child: Icon(Icons.error_outline));
      },
      scale: options.memCacheWidth != null || options.memCacheHeight != null
          ? 1
          : 1.5,
      cacheHeight: options.memCacheHeight,
      cacheWidth: options.memCacheWidth,
      color: options.color,
      colorBlendMode: options.colorBlendMode,
      filterQuality: options.filterQuality,
      alignment: options.alignment,
      repeat: options.repeat,
      matchTextDirection: options.matchTextDirection,
      gaplessPlayback: options.gaplessPlayback,
      centerSlice: options.centerSlice,
      // headers: options is NetworkImageOptions ? options.headers : null,
    );
  }
}
