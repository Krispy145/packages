import "package:mobx/mobx.dart";

part "store.g.dart";

/// [LoadState] is an enum that defines the different states of loading.
enum LoadState {
  /// [initial] is the state that will be used when the user is initial.
  initial,

  /// [loading] is the state that will be used when the user is loading.
  loading,

  /// [loaded] is the state that will be used when the user is loaded.
  loaded,

  /// [noMoreToLoad] is the state that will be used when the user has no more to load.
  noMoreToLoad,

  /// [empty] is the state that will be used when the user is empty.
  empty,

  /// [error] is the state that will be used when the user is error.
  error,

  /// [idle] is the state that will be used when the user is idle.
  idle,
}

/// [LoadStateStore] is the store that will be used to manage the state of the loading.
class LoadStateStore = _LoadStateStore with _$LoadStateStore;

/// [_LoadStateStore] is the base store that will be used to manage the state of the loading.
abstract class _LoadStateStore with Store {
  /// [currentState] is the state that will be used to manage the state of the loading.
  @observable
  LoadState currentState = LoadState.initial;

  /// [isInitial] is a getter that will be used to check if the user is initial.
  @computed
  bool get isInitial => currentState == LoadState.initial;

  /// [isLoading] is a getter that will be used to check if the user is loading.
  @computed
  bool get isLoading => currentState == LoadState.loading;

  /// [isLoaded] is a getter that will be used to check if the user is loaded.
  @computed
  bool get isLoaded => currentState == LoadState.loaded;

  /// [isNoMoreToLoad] is a getter that will be used to check if the user has no more to load.
  @computed
  bool get isNoMoreToLoad => currentState == LoadState.noMoreToLoad;

  /// [isEmpty] is a getter that will be used to check if the user is empty.
  @computed
  bool get isEmpty => currentState == LoadState.empty;

  /// [isError] is a getter that will be used to check if the user is error.
  @computed
  bool get isError => currentState == LoadState.error;

  /// [isIdle] is a getter that will be used to check if the user is idle.
  @computed
  bool get isIdle => currentState == LoadState.idle;

  @observable
  bool hasShownNoMoreToLoadSnackBar = false;

  /// [setInitial] is a method that will be used to set the state to initial.
  @action
  void setInitial() {
    if (currentState == LoadState.initial) return;
    currentState = LoadState.initial;
  }

  /// [setLoading] is a method that will be used to set the state to loading.
  @action
  void setLoading() {
    if (currentState == LoadState.loading) return;
    currentState = LoadState.loading;
  }

  /// [setLoaded] is a method that will be used to set the state to loaded.
  @action
  void setLoaded() {
    if (currentState == LoadState.loaded) return;
    currentState = LoadState.loaded;
  }

  /// [setNoMoreToLoad] is a method that will be used to set the state to noMoreToLoad.
  @action
  void setNoMoreToLoad() {
    if (currentState == LoadState.noMoreToLoad) return;
    currentState = LoadState.noMoreToLoad;
  }

  @action
  void setNoMoreToLoadSnackBar() {
    if (hasShownNoMoreToLoadSnackBar) return;
    hasShownNoMoreToLoadSnackBar = true;
  }

  /// [setEmpty] is a method that will be used to set the state to empty.
  @action
  void setEmpty() {
    if (currentState == LoadState.empty) return;
    currentState = LoadState.empty;
  }

  /// [setError] is a method that will be used to set the state to error.
  @action
  void setError() {
    if (currentState == LoadState.error) return;
    currentState = LoadState.error;
  }

  /// [setIdle] is a method that will be used to set the state to idle.
  @action
  void setIdle() {
    if (currentState == LoadState.idle) return;
    currentState = LoadState.idle;
  }
}
