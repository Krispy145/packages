// import 'package:mobx/mobx.dart';
// import 'package:utilities/widgets/load_state/base_store.dart';

// import '/data/models/fonts_model.dart';
// import '/domain/repositories/fonts.repository.dart';

// part 'store.g.dart';

// /// [FontsStore] is a class that uses [FontsBaseStore] to manage state of the fonts feature.
// class FontsStore = FontsBaseStore with _$FontsStore;

// /// [FontsBaseStore] is a class that manages the state of the fonts feature.
// abstract class FontsBaseStore extends LoadStateStore with Store {
//   /// [repository] is an instance of [FontsRepository].
//   final FontsRepository repository = FontsRepository();

//   /// [fontss] is an observable list of [FontsModel]s.
//   @observable
//   ObservableList<FontsModel?> fontss = ObservableList<FontsModel?>();

//   /// [loadFontsModels] loads all [FontsModel]s from the data source.
//   @action
//   Future<void> loadFontsModels() async {
//     try {
//       setLoading();
//       final loadedFontss = await repository.getAllFontsModelsFromApi();
//       if (loadedFontss.isNotEmpty) {
//         fontss
//           ..clear()
//           ..addAll(loadedFontss);
//         setLoaded();
//       } else {
//         setEmpty();
//       }
//     } catch (e) {
//       setError();
//     }
//   }
// }
