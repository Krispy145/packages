import 'package:mobx/mobx.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/data/models/text/text_types.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

/// [TextTypesStore] is a class that uses [TextTypesBaseStore] to manage state of the colorSchemes feature.
class TextTypesStore = TextTypesBaseStore with _$TextTypesStore;

/// [TextTypesBaseStore] is a class that manages the state of the colorSchemes feature.
abstract class TextTypesBaseStore with Store {
  /// [selectedTextType] is a property that stores the selected color from the current scheme.
  @observable
  // ignore: prefer_const_constructors
  Map<String, dynamic>? selectedTextType = AppTheme.textStyleTypes()?.toJson();

  // @observable
  // Map<String, dynamic> defaultTextType = TextTypes.defaultTextTypes().toJson();

  /// [getMergedMap] is a combination of the current and default component themes, with the current values taking priority
  @computed
  Map<String, dynamic> get mergedMap {
    if (selectedTextType != null) {
      // final result = {...defaultTextType, ...selectedTextType!};
      final result = selectedTextType!;
      AppLogger.print('mergedMap: $result', [PackageFeatures.theme]);
      return result;
    }
    return {}; // defaultTextType;
  }

  /// [selectedTextType] is a method that sets the selected color from the current scheme.
  @action
  void setSelectedTextType(Map<String, dynamic> value) {
    selectedTextType = value;
    AppLogger.print('selectedTextType: $selectedTextType', [PackageFeatures.theme]);
  }

  /// [setTextStyleModel] is a method that sets the current model.
  @action
  TextTypes? setTextStyleModel(String type, String size, String key, dynamic value) {
    try {
      selectedTextType![type][size][key] = value;
      return TextTypes.fromJson(selectedTextType!);
    } catch (e, stackTrace) {
      AppLogger.print('selectedTextType: $selectedTextType\nStackTrace: $stackTrace', [PackageFeatures.theme], type: LoggerType.error);
    }
    return null;
  }
}
