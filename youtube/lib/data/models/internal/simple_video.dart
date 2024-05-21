class Video {
  final String id;
  String? title;
  String? description;
  String? thumbnailUrl;
  String? channelTitle;
  String? duration;

  Video({
    required this.id,
    this.title = "",
    this.description,
    this.thumbnailUrl,
    this.channelTitle,
    this.duration,
  });
}
