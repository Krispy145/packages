import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media/data/enums/player_state.dart';
import 'package:media/data/models/multi_audio_support.dart';
import 'package:media/data/models/text_track.dart';
import 'package:media/utils/player_observer.dart';

part '_video_player.dart';

class VideoPlayer extends StatefulWidget {
  final PlayerState desiredState;
  final bool showPlayerControls;
  final String url;
  final bool loop;
  final bool autoPlay;
  final double startPosition;
  final bool isLiveStream;
  final String title;
  final String subtitle;
  final String preferredAudioLanguage;
  final String preferredTextLanguage;
  final bool allowPictureInPicture;

  final void Function()? onPlay;
  final void Function()? onPause;
  final void Function()? onComplete;
  final void Function(int? position)? onTime;
  final void Function(int? position, double offset)? onSeek;
  final void Function(int? duration)? onDuration;
  final void Function(String? error)? onError;

  const VideoPlayer({
    super.key,
    this.desiredState = PlayerState.PLAYING,
    this.showPlayerControls = true,
    required this.url,
    this.loop = false,
    this.autoPlay = true,
    this.startPosition = 0,
    this.isLiveStream = false,
    required this.title,
    required this.subtitle,
    this.preferredAudioLanguage = "eng",
    this.preferredTextLanguage = "en",
    this.onPlay,
    this.onPause,
    this.onComplete,
    this.onTime,
    this.onSeek,
    this.onDuration,
    this.onError,
    this.allowPictureInPicture = false,
  });

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer>
    with PlayerObserver, MultiAudioSupport {
  // List<HLSManifestLanguage> _hlsLanguages = [];

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration.zero, _getHLSManifestLanguages);
  }

  // Future<void> _getHLSManifestLanguages() async {
  //   if (_url == null) return;
  //   if (Platform.isIOS) return;
  //   if (_url!.isNotEmpty) {
  //     _hlsLanguages = await getManifestLanguages(_url!);
  //     setState(() {});
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return _InternalVideoPlayer(
      autoPlay: widget.autoPlay,
      showControls: widget.showPlayerControls,
      title: widget.title,
      subtitle: widget.subtitle,
      preferredAudioLanguage: widget.preferredAudioLanguage,
      isLiveStream: widget.isLiveStream,
      position: widget.startPosition,
      url: widget.url,
      onViewCreated: _onViewCreated,
      desiredState: widget.desiredState,
      preferredTextLanguage: widget.preferredTextLanguage,
      loop: widget.loop,
      allowPictureInPicture: widget.allowPictureInPicture,
    );
  }

  void _onViewCreated(int viewId) {
    listenForVideoPlayerEvents(viewId);
    enableMultiAudioSupport(viewId);
  }

  @override
  void onPlay() {
    super.onPlay();
    widget.onPlay?.call();
  }

  @override
  void onPause() {
    super.onPause();
    widget.onPause?.call();
  }

  @override
  void onComplete() {
    super.onComplete();
    widget.onComplete?.call();
  }

  @override
  void onTime(int? position) {
    super.onTime(position);
    widget.onTime?.call(position);
  }

  @override
  void onSeek(int? position, double offset) {
    super.onSeek(position, offset);
    widget.onSeek?.call(position, offset);
  }

  @override
  void onDuration(int? duration) {
    super.onDuration(duration);
    widget.onDuration?.call(duration);
  }

  @override
  void onError(String? error) {
    super.onError(error);
    widget.onError?.call(error);
  }
}
