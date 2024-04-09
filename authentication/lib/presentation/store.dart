// import 'package:authentication/data/models/user_model.dart';
// import 'package:mobx/mobx.dart';

// import '/data/models/authentication_model.dart';
// import '/domain/repositories/authentication.repository.dart';

// part 'store.g.dart';

// /// [AuthenticationStore] is a class that uses [_AuthenticationStore] to manage state of the authentication feature.
// class AuthenticationStore = _AuthenticationStore with _$AuthenticationStore;

// /// [_AuthenticationStore] is a class that manages the state of the authentication feature.
// abstract class _AuthenticationStore with Store {
//   /// [repository] is an instance of [AuthenticationRepository].
//   final AuthenticationRepository repository;

//   /// [_AuthenticationStore] constructor.
//   _AuthenticationStore({required this.repository});

//   /// [authentications] is an observable list of [AuthenticationModel]s.
//   @observable
//   ObservableList<UserModel?> authentications = ObservableList<UserModel?>();

//   /// [loadAuthenticationModels] loads all [AuthenticationModel]s from the data source.
//   @action
//   Future<void> loadAuthenticationModels() async {
//     try {
//       setLoading();
//       final loadedAuthentications = await repository.getAllAuthenticationModelsFromApi();
//       if (loadedAuthentications.isNotEmpty) {
//         authentications
//           ..clear()
//           ..addAll(loadedAuthentications);
//         setLoaded();
//       } else {
//         setEmpty();
//       }
//     } catch (e) {
//       setError();
//     }
//   }
// }
