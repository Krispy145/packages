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
  Video? get currentVideo {
    _$currentVideoAtom.reportRead();
    return super.currentVideo;
  }

  @override
  set currentVideo(Video? value) {
    _$currentVideoAtom.reportWrite(value, super.currentVideo, () {
      super.currentVideo = value;
    });
  }

  late final _$streamManifestAtom =
      Atom(name: '_VideoStore.streamManifest', context: context);

  @override
  StreamManifest? get streamManifest {
    _$streamManifestAtom.reportRead();
    return super.streamManifest;
  }

  @override
  set streamManifest(StreamManifest? value) {
    _$streamManifestAtom.reportWrite(value, super.streamManifest, () {
      super.streamManifest = value;
    });
  }

  @override
  String toString() {
    return '''
currentVideo: ${currentVideo},
streamManifest: ${streamManifest}
    ''';
  }
}
