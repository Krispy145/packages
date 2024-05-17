import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:utilities/widgets/load_state/builder.dart';
import 'package:youtube/presentation/youtube/single/store.dart';

/// [YoutubeView] of the app.
@RoutePage()
class YoutubeView extends StatelessWidget {
  /// [YoutubeView] constructor.
  YoutubeView({super.key});

  /// [store] is an instance of [YoutubeStore], used in the [LoadStateBuilder].
  final YoutubeStore store = YoutubeStore()..loadYoutubeModels();

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      emptyBuilder: (context) => const Center(
        child: Text("Empty youtube view."),
      ),
      loadedBuilder: (context) => ListView.builder(
        itemCount: store.youtubes.length,
        itemBuilder: (context, index) {
          final youtubeModel = store.youtubes[index];
          return ListTile(
            title: Text('ID: ${youtubeModel?.id}'),
            subtitle: Text('Name: ${youtubeModel?.name}'),
          );
        },
      ),
      errorBuilder: (context) => const Center(
        child: Text("Error loading youtube view."),
      ),
    );
  }
}
