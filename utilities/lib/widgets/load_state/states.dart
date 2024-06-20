sealed class LoadState {}

class InitialLoadState extends LoadState {
  InitialLoadState();
}

class LoadingLoadState extends LoadState {
  LoadingLoadState();
}

class NoMoreLoadState extends LoadState {
  NoMoreLoadState();
}

class EmptyLoadState extends LoadState {
  final String emptyMessage;

  EmptyLoadState({required this.emptyMessage});
}

class ErrorLoadState extends LoadState {
  final String errorMessage;

  ErrorLoadState({required this.errorMessage});
}

class LoadedLoadState extends LoadState {
  LoadedLoadState();
}

class IdleLoadState extends LoadState {
  IdleLoadState();
}
