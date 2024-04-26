import "dart:async";

import "package:flutter/foundation.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:utilities/data_sources/local/hive/helpers/type_box.dart";

class TypeBoxListenable<T> extends ValueListenable<TypeBox<T>> {
  final TypeBox<T> box;
  final Set<String>? keys;
  final List<VoidCallback> _listeners = [];
  StreamSubscription<BoxEvent>? _subscription;

  TypeBoxListenable(this.box, this.keys);

  @override
  void addListener(VoidCallback listener) {
    if (_listeners.isEmpty) {
      _subscription = box.watch().listen((event) {
        if (keys != null) {
          if (keys!.contains(event.key)) {
            for (final listener in _listeners) {
              listener();
            }
          }
        } else {
          for (final listener in _listeners) {
            listener();
          }
        }
      });
    }

    _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);

    if (_listeners.isEmpty) {
      _subscription?.cancel();
      _subscription = null;
    }
  }

  @override
  TypeBox<T> get value => box;
}
