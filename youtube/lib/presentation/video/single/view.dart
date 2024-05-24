import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:utilities/widgets/load_state/builder.dart";
import "package:youtube_player_flutter/youtube_player_flutter.dart";

import "/data/models/video_model.dart";
import "store.dart";

/// [VideoView] of the app.
@RoutePage()
class VideoView extends StatelessWidget {
  /// [VideoView] constructor.
  VideoView({super.key, required String? id, required VideoModel? videoModel, required String apiKey, this.builder, required this.store}) {
    store = VideoStore(id: id, initialVideoModel: videoModel, apiKey: apiKey);
  }

  final Widget Function(BuildContext context, Widget player, VideoModel video)? builder;

  /// [store] is an instance of [VideoStore], used in the [LoadStateBuilder].
  /// initialized in the constructor.
  late final VideoStore store;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadStateBuilder(
        viewStore: store,
        errorBuilder: (context) => const Center(
          child: Text("Error loading video."),
        ),
        loadedBuilder: (context) {
          final video = store.currentVideo!.toVideo();
          return YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: video.id,
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                  // startAt: TODO: Save in local storage against video id and playlist id
                ),
              ),
              showVideoProgressIndicator: true,
            ),
            builder: (context, player) {
              if (builder != null && store.currentVideo != null) {
                return builder!(context, player, store.currentVideo!);
              }
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    player,
                    if (video.title != null)
                      Text(
                        video.title!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    const SizedBox(height: 16),
                    if (video.duration != null)
                      Text(
                        "${video.duration}",
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    if (video.duration != null) const SizedBox(height: 16),
                    if (video.description != null) Text(video.description!, style: const TextStyle(fontSize: 16)),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
