import "package:mobx/mobx.dart";

part "store.g.dart";

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

// /// [LoadState] is an enum that defines the different states of loading.
// enum LoadStateOld {
//   /// [initial] is the state that will be used when the user is initial.
//   initial,

//   /// [loading] is the state that will be used when the user is loading.
//   loading,

//   /// [loaded] is the state that will be used when the user is loaded.
//   loaded,

//   /// [noMoreToLoad] is the state that will be used when the user has no more to load.
//   noMoreToLoad,

//   /// [empty] is the state that will be used when the user is empty.
//   empty,

//   /// [error] is the state that will be used when the user is error.
//   error,

//   /// [idle] is the state that will be used when the user is idle.
//   idle,
// }

/// [LoadStateStore] is the store that will be used to manage the state of the loading.
class LoadStateStore = _LoadStateStore with _$LoadStateStore;

/// [_LoadStateStore] is the base store that will be used to manage the state of the loading.
abstract class _LoadStateStore with Store {
  /// [currentState] is the state that will be used to manage the state of the loading.
  @observable
  LoadState currentState = InitialLoadState();

  /// [isInitial] is a getter that will be used to check if the user is initial.
  @computed
  bool get isInitial => currentState is InitialLoadState;

  /// [isLoading] is a getter that will be used to check if the user is loading.
  @computed
  bool get isLoading => currentState is LoadingLoadState;

  /// [isLoaded] is a getter that will be used to check if the user is loaded.
  @computed
  bool get isLoaded => currentState is LoadedLoadState;

  /// [isNoMoreToLoad] is a getter that will be used to check if the user has no more to load.
  @computed
  bool get isNoMoreToLoad => currentState is NoMoreLoadState;

  /// [isEmpty] is a getter that will be used to check if the user is empty.
  @computed
  bool get isEmpty => currentState is EmptyLoadState;

  /// [isError] is a getter that will be used to check if the user is error.
  @computed
  bool get isError => currentState is ErrorLoadState;

  /// [isIdle] is a getter that will be used to check if the user is idle.
  @computed
  bool get isIdle => currentState is IdleLoadState;

  @observable
  bool hasShownNoMoreToLoadSnackBar = false;

  /// [setInitial] is a method that will be used to set the state to initial.
  @action
  void setInitial() {
    if (isInitial) return;
    currentState = InitialLoadState();
  }

  /// [setLoading] is a method that will be used to set the state to loading.
  @action
  void setLoading() {
    if (isLoading) return;
    currentState = LoadingLoadState();
  }

  /// [setLoaded] is a method that will be used to set the state to loaded.
  @action
  void setLoaded() {
    if (isLoaded) return;
    currentState = LoadedLoadState();
  }

  /// [setNoMoreToLoad] is a method that will be used to set the state to noMoreToLoad.
  @action
  void setNoMoreToLoad() {
    if (isNoMoreToLoad) return;
    currentState = NoMoreLoadState();
  }

  @action
  void setNoMoreToLoadSnackBar() {
    if (hasShownNoMoreToLoadSnackBar) return;
    hasShownNoMoreToLoadSnackBar = true;
  }

  /// [setEmpty] is a method that will be used to set the state to empty.
  @action
  void setEmpty(String emptyMessage) {
    if (currentState is EmptyLoadState) {
      if ((currentState as EmptyLoadState).emptyMessage == emptyMessage) {
        return;
      }
    }
    currentState = EmptyLoadState(emptyMessage: emptyMessage);
  }

  /// [setError] is a method that will be used to set the state to error.
  @action
  void setError(String errorMessage) {
    if (currentState is ErrorLoadState) {
      if ((currentState as ErrorLoadState).errorMessage == errorMessage) {
        return;
      }
    }
    currentState = ErrorLoadState(errorMessage: errorMessage);
  }

  /// [setIdle] is a method that will be used to set the state to idle.
  @action
  void setIdle() {
    if (isIdle) return;
    currentState = IdleLoadState();
  }
}
