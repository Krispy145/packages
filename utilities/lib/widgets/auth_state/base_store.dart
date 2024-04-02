import 'package:mobx/mobx.dart';

part 'base_store.g.dart';

/// [AuthState] is an enum that defines the different states of authentication.
enum AuthState {
  /// [authenticated] is the state that will be used when the user is authenticated.
  authenticated,

  /// [unauthenticated] is the state that will be used when the user is unauthenticated.
  unauthenticated,
}

/// [AuthStateStore] is the store that will be used to manage the state of the authentication.
class AuthStateStore = AuthStateBaseStore with _$AuthStateStore;

/// [AuthStateBaseStore] is the base store that will be used to manage the state of the authentication.
abstract class AuthStateBaseStore with Store {
  /// [currentState] is the state that will be used to manage the state of the authentication.
  @observable
  AuthState currentState = AuthState.unauthenticated;

  /// [isAuthenticated] is a getter that will be used to check if the user is authenticated.
  @computed
  bool get isAuthenticated => currentState == AuthState.authenticated;

  /// [isUnauthenticated] is a getter that will be used to check if the user is unauthenticated.
  @computed
  bool get isUnauthenticated => currentState == AuthState.unauthenticated;

  /// [setAuthenticated] is a method that will be used to set the state to authenticated.
  @action
  void setAuthenticated() {
    currentState = AuthState.authenticated;
  }

  /// [setUnauthenticated] is a method that will be used to set the state to unauthenticated.
  @action
  void setUnauthenticated() {
    currentState = AuthState.unauthenticated;
  }
}
