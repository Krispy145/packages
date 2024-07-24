import "package:flutter/material.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/presentation/instagram/components/select_tile.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/layouts/paginated_list/builder.dart";
import "package:utilities/snackbar/configuration.dart";

import "store.dart";

class InstagramMediaView extends StatelessWidget {
  final void Function()? onPressedConfirmation;
  final InstagramMediaStore store;

  const InstagramMediaView({
    super.key,
    required this.store,
    this.onPressedConfirmation,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Text(
                "Select Media",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: SafeArea(
                  child: PaginatedListBuilder<InstagramMediaModel>.gridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    store: store,
                    itemBuilder: (context, index, media) {
                      return InstagramSelectTile(
                        media: media,
                        onTap: () {
                          context.showSnackbar(
                            configuration: SnackbarConfiguration.information(title: "Selected ${media.caption}"),
                          );
                        },
                      );
                    },
                    // loadStateBuilder: LoadStateBuilder(
                    //   store: store,
                    //   emptyBuilder: (context, empty) => Center(child: Text(empty)),
                    //   errorBuilder: (context, error) => Center(child: Text(error)),
                    //   loadedBuilder: (context) => ElevatedButton(
                    //     onPressed: onPressedConfirmation,
                    //     child: const Text("Confirm"),
                    //   ),
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
