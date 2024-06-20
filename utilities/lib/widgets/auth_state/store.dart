import "package:mobx/mobx.dart";
import "package:utilities/widgets/auth_state/states.dart";

part "store.g.dart";

/// [AuthStateStore] is the store that will be used to manage the state of the authentication.
mixin AuthStateStore {
  /// [currentAuthState] is the state that will be used to manage the state of the authentication.
  final Observable<AuthState> _currentAuthState = Observable(AuthState.unauthenticated);
  AuthState get currentAuthState => _currentAuthState.value;
  set currentAuthState(AuthState value) => _currentAuthState.value = value;

  /// [isAuthenticated] is a getter that will be used to check if the user is authenticated.
  late final _isAuthenticated = Computed(() => currentAuthState == AuthState.authenticated);
  bool get isAuthenticated => _isAuthenticated.value;

  /// [isUnauthenticated] is a getter that will be used to check if the user is unauthenticated.
  late final _isUnauthenticated = Computed(() => currentAuthState == AuthState.unauthenticated);
  bool get isUnauthenticated => _isUnauthenticated.value;

  /// [setAuthenticated] is a method that will be used to set the state to authenticated.
  void setAuthenticated() => setAuthenticatedAction.call([]);
  late final setAuthenticatedAction = Action(_setAuthenticated);
  void _setAuthenticated() {
    currentAuthState = AuthState.authenticated;
  }

  /// [setUnauthenticated] is a method that will be used to set the state to unauthenticated.
  void setUnauthenticated() => setUnauthenticatedAction.call([]);
  late final setUnauthenticatedAction = Action(_setUnauthenticated);
  void _setUnauthenticated() {
    currentAuthState = AuthState.unauthenticated;
  }
}


// /// [AuthStateStore] is the store that will be used to manage the state of the authentication.
// class AuthStateStore = _AuthStateStore with _$AuthStateStore;

// /// [_AuthStateStore] is the base store that will be used to manage the state of the authentication.
// abstract class _AuthStateStore with Store {
//   /// [currentAuthState] is the state that will be used to manage the state of the authentication.
//   @observable
//   AuthState currentAuthState = AuthState.unauthenticated;

//   /// [isAuthenticated] is a getter that will be used to check if the user is authenticated.
//   @computed
//   bool get isAuthenticated => currentAuthState == AuthState.authenticated;

//   /// [isUnauthenticated] is a getter that will be used to check if the user is unauthenticated.
//   @computed
//   bool get isUnauthenticated => currentAuthState == AuthState.unauthenticated;

//   /// [setAuthenticated] is a method that will be used to set the state to authenticated.
//   @action
//   void setAuthenticated() {
//     currentAuthState = AuthState.authenticated;
//   }

//   /// [setUnauthenticated] is a method that will be used to set the state to unauthenticated.
//   @action
//   void setUnauthenticated() {
//     currentAuthState = AuthState.unauthenticated;
//   }
// }
