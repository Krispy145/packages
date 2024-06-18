import "package:cached_network_image/cached_network_image.dart";
import "package:widgets/images/options/cached_provider.dart";

class DOCachedNetworkImageProvider extends CachedNetworkImageProvider {
  final CachedNetworkProviderOptions? options;
  DOCachedNetworkImageProvider(
    super.url, {
    this.options,
  }) : super(
          headers: options?.getProxyAndHeaders(url).third,
        );
}
