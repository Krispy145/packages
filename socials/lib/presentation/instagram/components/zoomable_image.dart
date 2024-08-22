import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:widgets/images/cached_network_provider.dart";

enum ZoomImageType { circle, rectangle }

class ZoomableImage extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final ZoomImageType myZoomImageType;
  final double elevation;

  const ZoomableImage({
    super.key,
    required this.imageUrl,
    required this.radius,
    this.myZoomImageType = ZoomImageType.rectangle,
    this.elevation = 8.0,
  });

  Future<void> _showImage(BuildContext context, ImageProvider provider) {
    return showDialog(
      context: context,
      builder: (ctx) {
        return SizedBox(
          width: context.screenWidth,
          height: context.screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: provider,
                fit: BoxFit.contain,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ImageProvider provider = DOCachedNetworkImageProvider(
      imageUrl,
    );

    switch (myZoomImageType) {
      case ZoomImageType.circle:
        return InkWell(
          child: CircleAvatar(
            radius: radius,
            backgroundImage: provider,
          ),
          onTap: () {
            _showImage(context, provider);
          },
        );
      case ZoomImageType.rectangle:
        return Material(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          elevation: elevation,
          child: InkWell(
            child: Image(
              image: provider,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Center(
                child: Icon(Icons.error),
              ),
            ),
            onTap: () {
              _showImage(context, provider);
            },
          ),
        );
    }
  }
}
