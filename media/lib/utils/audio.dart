import 'package:flutter/services.dart';

/// See [play] method as well as example app on how to use.
class Audio {
  static const MethodChannel _audioChannel =
      MethodChannel('ae.digitaloasis/NativeAudioChannel');

  Audio._();

  static Audio? _instance;
  static Audio instance() {
    _instance ??= Audio._();
    return _instance!;
  }

  String? _url;
  String? _title;
  String? _subtitle;
  Duration? _position;
  bool? _isLiveStream;

  /// Plays given [url] with native player. The [title] and [subtitle]
  /// are used for lock screen info panel on both iOS & Android. Optionally pass
  /// in current [position] to start playback from that point. The
  /// [isLiveStream] flag is only used on iOS to change the scrub-bar look
  /// on lock screen info panel. It has no affect on the actual functionality
  /// of the plugin. Defaults to false.
  Future<void> play(String url,
      {String title = "",
      String subtitle = "",
      Duration position = Duration.zero,
      bool isLiveStream = false}) async {
    if (_hasDataChanged(url, title, subtitle, position, isLiveStream)) {
      _url = url;
      _title = title;
      _subtitle = subtitle;
      _position = position;
      _isLiveStream = isLiveStream;
      return _audioChannel.invokeMethod("play", <String, dynamic>{
        "url": url,
        "title": title,
        "subtitle": subtitle,
        "position": position.inMilliseconds,
        "isLiveStream": isLiveStream,
      });
    }
  }

  bool _hasDataChanged(String url, String title, String subtitle,
      Duration position, bool isLiveStream) {
    return _url != url ||
        _title != title ||
        _subtitle != subtitle ||
        _position != position ||
        _isLiveStream != isLiveStream;
  }

  Future<void> pause() async {
    return _audioChannel.invokeMethod("pause");
  }

  Future<void> reset() async {
    return _audioChannel.invokeMethod("reset");
  }

  Future<void> seekTo(double seconds) async {
    return _audioChannel.invokeMethod("seekTo", <String, dynamic>{
      "second": seconds,
    });
  }

  Future<void> dispose() async {
    _instance = null;
    await _audioChannel.invokeMethod("dispose");
  }
}
