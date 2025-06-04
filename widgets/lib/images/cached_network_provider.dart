import "package:cached_network_image/cached_network_image.dart";
import "package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart";
import "package:widgets/images/options/cached_provider.dart";

class PLSCachedNetworkImageProvider extends CachedNetworkImageProvider {
  final String imageUrl;
  final CachedNetworkProviderOptions? options;
  PLSCachedNetworkImageProvider(this.imageUrl, {this.options})
    : super(
        options?.getProxyAndHeaders(imageUrl).second ?? imageUrl,
        headers: options?.getProxyAndHeaders(imageUrl).third,
        imageRenderMethodForWeb: options?.getProxyAndHeaders(imageUrl).first ?? false ? ImageRenderMethodForWeb.HttpGet : ImageRenderMethodForWeb.HtmlImage,
      );
}
