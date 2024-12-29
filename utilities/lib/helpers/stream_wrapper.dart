import "dart:async";

class StreamWrapper<T> {
  final String name;
  final Stream<T> stream;
  StreamSubscription<T>? _subscription;
  T? latestValue;

  /// Ensure the stream is a broadcast stream
  StreamWrapper({required this.name, required Stream<T> stream}) : stream = stream.isBroadcast ? stream : stream.asBroadcastStream();

  /// Create an empty StreamWrapper
  static StreamWrapper<T> empty<T>() {
    return StreamWrapper(name: "Empty Stream", stream: Stream<T>.empty().asBroadcastStream());
  }

  /// Start listening to the stream with an optional callback
  void startListening({void Function(T value)? onData, Function? onError}) {
    _subscription = stream.listen(
      (value) {
        latestValue = value; // Cache the latest value
        if (onData != null) {
          onData(value); // Execute the callback with the new value
        }
      },
      onError: (dynamic error) {
        if (onError != null) {
          onError(error);
        }
      },
    );
  }

  /// Cancel the subscription and mark the stream as inactive
  Future<void> cancel() async {
    await _subscription?.cancel();
    _subscription = null;
  }

  /// Dispose of the wrapper
  Future<void> dispose() async {
    await cancel();
  }

  /// Apply asyncExpand to the stream with a transformation function
  StreamWrapper<R> asyncExpand<R>(Stream<R> Function(T event) transform) {
    final transformedStream = stream.asyncExpand((event) async* {
      yield* transform(event);
    }).asBroadcastStream();

    return StreamWrapper<R>(
      name: "$name (Transformed)",
      stream: transformedStream,
    );
  }
}
