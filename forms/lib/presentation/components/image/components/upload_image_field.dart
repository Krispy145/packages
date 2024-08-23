import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:universal_io/io.dart";
import "package:utilities/sizes/spacers.dart";

class UploadImageField extends StatelessWidget {
  UploadImageField({
    super.key,
    required this.store,
  });

  final ImageFormFieldStore store;

  final isMobile = Platform.isAndroid || Platform.isIOS;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Sizes.xs.spacer(),
            // UPLOAD IMAGE
            if (!isMobile) ...[
              _buildUploadImage(),
              Sizes.xs.spacer(),
            ],
            // UPLOAD IMAGE GALLERY
            if (isMobile) ...[
              _buildUploadImageGallery(),
              Sizes.xs.spacer(),
              // TAKE PHOTO
              _buildTakePhoto(),
            ],
          ],
        );
      },
    );
  }

  Widget _buildUploadImage() {
    return FilledButton.icon(
      onPressed: store.pickImage,
      icon: const Icon(Icons.image),
      label: const Text("Upload Image"),
    );
  }

  Widget _buildUploadImageGallery() {
    return FilledButton.icon(
      onPressed: store.pickImage,
      icon: const Icon(Icons.image),
      label: const Text("Upload from Gallery"),
    );
  }

  Widget _buildTakePhoto() {
    return FilledButton.icon(
      onPressed: store.takePhoto,
      icon: const Icon(Icons.camera_alt),
      label: const Text("Take a Photo"),
    );
  }
}
