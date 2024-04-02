// import 'package:authentication/data/models/user_model.dart';
// import 'package:mobx/mobx.dart';

// import '/data/models/authentication_model.dart';
// import '/domain/repositories/authentication.repository.dart';

// part 'store.g.dart';

// /// [AuthenticationStore] is a class that uses [AuthenticationBaseStore] to manage state of the authentication feature.
// class AuthenticationStore = AuthenticationBaseStore with _$AuthenticationStore;

// /// [AuthenticationBaseStore] is a class that manages the state of the authentication feature.
// abstract class AuthenticationBaseStore with Store {
//   /// [repository] is an instance of [AuthenticationRepository].
//   final AuthenticationRepository repository;

//   /// [AuthenticationBaseStore] constructor.
//   AuthenticationBaseStore({required this.repository});

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
