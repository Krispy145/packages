import "package:widgets/images/options/network.dart";

class CachedNetworkProviderOptions extends NetworkImageOptions {
  final double scale;
  final int? maxHeight;
  final int? maxWidth;

  CachedNetworkProviderOptions({
    this.maxHeight,
    this.maxWidth,
    this.scale = 1.0,
    super.errorListener,
    super.proxy,
    super.headers,
    super.cacheManager,
    super.cacheKey,
    super.imageRenderMethodForWeb,
    super.borderRadius,
  });
}
