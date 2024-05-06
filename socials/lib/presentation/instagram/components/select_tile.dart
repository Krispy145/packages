import "package:flutter/material.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/presentation/instagram/components/zoomable_image.dart";

class InstagramSelectTile extends StatelessWidget {
  final InstagramMediaModel media;
  final void Function()? onTap;

  const InstagramSelectTile({
    super.key,
    required this.media,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ZoomableImage(
        imageUrl: media.mediaUrl ?? "",
        radius: 15,
      ),
    );
  }
}
