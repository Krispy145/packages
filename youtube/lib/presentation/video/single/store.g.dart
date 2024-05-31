// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VideoStore on _VideoStore, Store {
  late final _$currentVideoAtom =
      Atom(name: '_VideoStore.currentVideo', context: context);

  @override
  VideoModel? get currentVideo {
    _$currentVideoAtom.reportRead();
    return super.currentVideo;
  }

  @override
  set currentVideo(VideoModel? value) {
    _$currentVideoAtom.reportWrite(value, super.currentVideo, () {
      super.currentVideo = value;
    });
  }

  @override
  String toString() {
    return '''
currentVideo: ${currentVideo}
    ''';
  }
}
