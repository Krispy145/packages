import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";

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
      barrierDismissible: true,
      builder: (ctx) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
    final ImageProvider provider = CachedNetworkImageProvider(imageUrl);

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
