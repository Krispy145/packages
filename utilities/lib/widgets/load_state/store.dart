import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/states.dart";

mixin LoadStateStore {
// /// [LoadStateStore] is the store that will be used to manage the state of the authentication.
// class LoadStateStore = _LoadStateStore with _$LoadStateStore;

// /// [_LoadStateStore] is the base store that will be used to manage the state of the authentication.
// abstract class _LoadStateStore with Store {
  /// [LoadStateStore] is the base store that will be used to manage the state of the loading.

  /// [currentState] is the state that will be used to manage the state of the loading.
  final Observable<LoadState> _currentState = Observable(InitialLoadState());
  LoadState get currentState => _currentState.value;
  set currentState(LoadState value) => _currentState.value = value;

  /// [isInitial] is a getter that will be used to check if the user is loading.
  late final _isInitial = Computed(() => currentState is InitialLoadState);
  bool get isInitial => _isInitial.value;

  /// [isLoading] is a getter that will be used to check if the user is loading.
  late final _isLoading = Computed(() => currentState is LoadingLoadState);
  bool get isLoading => _isLoading.value;

  /// [isLoaded] is a getter that will be used to check if the user is loading.
  late final _isLoaded = Computed(() => currentState is LoadedLoadState);
  bool get isLoaded => _isLoaded.value;

  /// [isNoMoreToLoad] is a getter that will be used to check if the user has no more to load.
  late final _isNoMoreToLoad = Computed(() => currentState is NoMoreLoadState);
  bool get isNoMoreToLoad => _isNoMoreToLoad.value;

  /// [isEmpty] is a getter that will be used to check if the user is empty.
  late final _isEmpty = Computed(() => currentState is EmptyLoadState);
  bool get isEmpty => _isEmpty.value;

  /// [isError] is a getter that will be used to check if the user is error.
  late final _isError = Computed(() => currentState is ErrorLoadState);
  bool get isError => _isError.value;

  // /// [isIdle] is a getter that will be used to check if the user is idle.
  // late final _isIdle = Computed(() => currentState is IdleLoadState);
  // bool get isIdle => _isIdle.value;

  bool get hasShownNoMoreToLoadSnackBar => _hasShownNoMoreToLoadSnackBar.value;
  set hasShownNoMoreToLoadSnackBar(bool value) => _hasShownNoMoreToLoadSnackBar.value = value;
  final Observable<bool> _hasShownNoMoreToLoadSnackBar = Observable(false);

  void setInitial() => setInitialAction.call([]);
  late final setInitialAction = Action(_setInitial);

  /// [setInitial] is a method that will be used to set the state to initial.
  void _setInitial() {
    if (isInitial) return;
    currentState = InitialLoadState();
  }

  void setLoading() => setLoadingAction.call([]);
  late final setLoadingAction = Action(_setLoading);

  /// [setLoading] is a method that will be used to set the state to loading.
  void _setLoading() {
    if (isLoading) return;
    currentState = LoadingLoadState();
  }

  void setLoaded() => setLoadedAction.call([]);
  late final setLoadedAction = Action(_setLoaded);

  /// [setLoaded] is a method that will be used to set the state to loaded.
  void _setLoaded() {
    if (isLoaded) return;
    currentState = LoadedLoadState();
  }

  void setNoMoreToLoad() => setNoMoreToLoadAction.call([]);
  late final setNoMoreToLoadAction = Action(_setNoMoreToLoad);

  /// [setNoMoreToLoad] is a method that will be used to set the state to noMoreToLoad.
  void _setNoMoreToLoad() {
    if (isNoMoreToLoad) return;
    currentState = NoMoreLoadState();
  }

  void setNoMoreToLoadSnackBar() => setNoMoreToLoadSnackBarAction.call([]);
  late final setNoMoreToLoadSnackBarAction = Action(_setNoMoreToLoadSnackBar);
  void _setNoMoreToLoadSnackBar() {
    if (hasShownNoMoreToLoadSnackBar) return;
    hasShownNoMoreToLoadSnackBar = true;
  }

  void setEmpty(String emptyMessage) => _setEmptyAction.call([emptyMessage]);
  late final _setEmptyAction = Action(_setEmpty);

  /// [setEmpty] is a method that will be used to set the state to empty.
  void _setEmpty(String emptyMessage) {
    print("LoadState: Empty");
    if (currentState is EmptyLoadState) {
      if ((currentState as EmptyLoadState).emptyMessage == emptyMessage) {
        return;
      }
    }
    currentState = EmptyLoadState(emptyMessage: emptyMessage);
  }

  void setError(String errorMessage) => _setErrorAction.call([errorMessage]);
  late final _setErrorAction = Action(_setError);

  /// [setError] is a method that will be used to set the state to error.
  void _setError(String errorMessage) {
    print("LoadState: Error");
    if (currentState is ErrorLoadState) {
      if ((currentState as ErrorLoadState).errorMessage == errorMessage) {
        return;
      }
    }
    currentState = ErrorLoadState(errorMessage: errorMessage);
  }
}


// // part "store.g.dart";
// part "store.manual.dart";

// // TO use in .g file: mixin _$LoadStateStore on _LoadStateStore, Store {

// // TO use in this file:
// // /// [LoadStateStore] is the store that will be used to manage the state of the authentication.
// // mixin LoadStateStore implements _LoadStateStore, _$LoadStateStore {}

// // /// [_LoadStateStore] is the base store that will be used to manage the state of the authentication.
// // mixin _LoadStateStore on Store {

// //
// //
// //

// /// [LoadStateStore] is the store that will be used to manage the state of the authentication.
// mixin LoadStateStore on _LoadStateStore, _$LoadStateStore {}

// /// [_LoadStateStore] is the base store that will be used to manage the state of the authentication.
// mixin _LoadStateStore {
// // /// [LoadStateStore] is the store that will be used to manage the state of the authentication.
// // class LoadStateStore = _LoadStateStore with _$LoadStateStore;

// // /// [_LoadStateStore] is the base store that will be used to manage the state of the authentication.
// // abstract class _LoadStateStore with Store {
//   /// [LoadStateStore] is the base store that will be used to manage the state of the loading.

//   @observable
//   LoadState currentState = InitialLoadState();

//   @computed
//   bool get isInitial => currentState is InitialLoadState;

//   @computed
//   bool get isLoading => currentState is LoadingLoadState;

//   @computed
//   bool get isLoaded => currentState is LoadedLoadState;

//   @computed
//   bool get isNoMoreToLoad => currentState is NoMoreLoadState;

//   @computed
//   bool get isEmpty => currentState is EmptyLoadState;

//   @computed
//   bool get isError => currentState is ErrorLoadState;

//   @computed
//   bool get isIdle => currentState is IdleLoadState;
 
//   @observable
//   bool hasShownNoMoreToLoadSnackBar = false;

//   @action
//   void setInitial() {
//     if (isInitial) return;
//     currentState = InitialLoadState();
//   }
 

//   @action
//   void setLoading() {
//     if (isLoading) return;
//     currentState = LoadingLoadState();
//   }


//   @action
//   void setLoaded() {
//     if (isLoaded) return;
//     currentState = LoadedLoadState();
//   }


//   @action
//   void setNoMoreToLoad() {
//     if (isNoMoreToLoad) return;
//     currentState = NoMoreLoadState();
//   }


//   @action
//   void setNoMoreToLoadSnackBar() {
//     if (hasShownNoMoreToLoadSnackBar) return;
//     hasShownNoMoreToLoadSnackBar = true;
//   }


//   @action
//   void setEmpty(String emptyMessage) {
//     print("LoadState: Empty");
//     if (currentState is EmptyLoadState) {
//       if ((currentState as EmptyLoadState).emptyMessage == emptyMessage) {
//         return;
//       }
//     }
//     currentState = EmptyLoadState(emptyMessage: emptyMessage);
//   }


//   @action
//   void setError(String errorMessage) {
//     print("LoadState: Error");
//     if (currentState is ErrorLoadState) {
//       if ((currentState as ErrorLoadState).errorMessage == errorMessage) {
//         return;
//       }
//     }
//     currentState = ErrorLoadState(errorMessage: errorMessage);
//   }

// }