import '/data/models/fonts_model.dart';
import '/data/repositories/_repositories.dart';
import '/data/repositories/fonts.repository.dart';

/// [FontsRepository] is an abstract class that defines the basic CRUD operations for the [FontsModel] entity.
class FontsRepository {
  final FontsDataRepository _fontsDataRepository =
      DataRepositories.instance.fonts;

  /// [FontsRepository] constructor.
  FontsRepository();

  /// [getAllFontsModelsFromApi] fetches all [FontsModel]s from the data source.
  Future<List<FontsModel?>> getAllFontsModelsFromApi() {
    return _fontsDataRepository.getAllFontsModels(source: DataSourceTypes.api);
  }

  /// [addAllFontsModelsFromApi] adds all [FontsModel]s to the data source.
  Future<void> addAllFontsModelsFromApi(List<FontsModel> fontsModels) {
    return _fontsDataRepository.addAllFontsModels(
        source: DataSourceTypes.api, fontsModels: fontsModels);
  }
}
