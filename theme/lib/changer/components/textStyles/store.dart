import 'package:mobx/mobx.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/data/models/text/text_types.dart';
import 'package:theme/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

/// [TextTypesStore] is a class that uses [_TextTypesStore] to manage state of the colorSchemes feature.
class TextTypesStore = _TextTypesStore with _$TextTypesStore;

/// [_TextTypesStore] is a class that manages the state of the colorSchemes feature.
abstract class _TextTypesStore with Store {
  /// [selectedTextType] is a property that stores the selected color from the current scheme.
  @observable
  // ignore: prefer_const_constructors
  Map<String, dynamic>? selectedTextType = AppTheme.textStyleTypes()?.toJson();

  // @observable
  // Map<String, dynamic> defaultTextType = TextTypes.defaultTextTypes().toJson();

  /// [mergedMap] is a combination of the current and default component themes, with the current values taking priority
  @computed
  Map<String, dynamic> get mergedMap {
    if (selectedTextType != null) {
      // final result = {...defaultTextType, ...selectedTextType!};
      final result = selectedTextType!;
      AppLogger.print('mergedMap: $result', [ThemePackageLoggers.theme]);
      return result;
    }
    return {}; // defaultTextType;
  }

  /// [selectedTextType] is a method that sets the selected color from the current scheme.
  @action
  void setSelectedTextType(Map<String, dynamic> value) {
    selectedTextType = value;
    AppLogger.print('selectedTextType: $selectedTextType', [ThemePackageLoggers.theme]);
  }

  /// [setTextStyleModel] is a method that sets the current model.
  @action
  TextTypes? setTextStyleModel(String type, String size, String key, dynamic value) {
    try {
      selectedTextType![type][size][key] = value;
      return TextTypes.fromJson(selectedTextType!);
    } catch (e, stackTrace) {
      AppLogger.print('selectedTextType: $selectedTextType\nStackTrace: $stackTrace', [ThemePackageLoggers.theme], type: LoggerType.error);
    }
    return null;
  }
}
