/// [Playlist] is a class that represents the main model.
class Playlist {
  /// [id] is the id of the playlist.
  final String id;

  /// [title] is the title of the playlist.
  final String title;

  /// [description] is the description of the playlist.
  final String? description;

  /// [thumbnailUrl] is the thumbnail url of the playlist.
  final String? thumbnailUrl;

  /// [videoCount] is the video count of the playlist.
  final int? videoCount;

  /// [Playlist] constructor.
  Playlist({
    required this.id,
    this.title = "",
    this.description,
    this.thumbnailUrl,
    this.videoCount,
  });
}
