import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/extensions/build_context.dart";
import "/data/models/youtube_model.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "store.dart";

/// [YoutubeView] of the app.
@RoutePage()
class YoutubeView extends StatelessWidget {
  final String? id;
  final YoutubeModel? youtubeModel;

  /// [YoutubeView] constructor.
  YoutubeView({super.key, this.id, this.youtubeModel}) {
    store = YoutubeStore(id: id, initialYoutubeModel: youtubeModel);
  }

  /// [store] is an instance of [YoutubeStore], used in the [LoadStateBuilder].
  /// initialized in the constructor.
  late final YoutubeStore store;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          return Center(
            child: Text(
              store.isEmpty ? "Empty Youtube" : "store.currentYoutube?.name",
              style: context.textTheme.headlineMedium,
            ),
          );
        },
      ),
    );
  }
}
