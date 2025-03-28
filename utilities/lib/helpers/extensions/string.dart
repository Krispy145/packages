import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";
import "package:uuid/uuid.dart";

extension UUIDExtension on UUID {
  bool isValidUUID() {
    return Uuid.isValidUUID(fromString: this);
  }
}

/// String Extensions
extension StringExtension on String {
  /// Capitalize String
  String _toCapitalized() =>
      length > 0 ? "${this[0].toUpperCase()}${substring(1).toLowerCase()}" : "";

  /// Title Capitalize String
  String toTitleCase() => replaceAll(RegExp(" +"), " ")
      .split(" ")
      .map((str) => str._toCapitalized())
      .join(" ");

  /// Checks if string is or isn't a number
  bool get isNumeric => double.tryParse(this) != null;

  /// Checks if string is or isn't a number
  bool get isNotNumeric => double.tryParse(this) == null;

  /// Returns the string with the first character capitalized
  String capitalizeFirst() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  /// Returns the the string, using the camelCase format rather than snake_case
  String snakeCaseToCamelCase() {
    final partsArray = split("_");
    for (var i = 0; i < partsArray.length; i++) {
      if (i != 0) {
        partsArray[i] = partsArray[i].toLowerCase().capitalizeFirst();
      } else {
        partsArray[i] = partsArray[i].toLowerCase();
      }
    }
    final enumName = partsArray.join();
    return enumName;
  }

  /// Returns the the string, using the snake_case format rather than camelCase
  String camelCaseToSnakeCase() {
    return replaceAllMapped(
      RegExp("([A-Z])"),
      (match) => "_${match.group(1)!.toLowerCase()}",
    );
  }

  /// Returns the the string, using the Title Case format from camelCase
  String camelCaseToTitleCase() {
    if (isEmpty) return "";
    final words = split(RegExp("(?=[A-Z])|_"));
    return words.map((word) {
      if (word.isEmpty) return "";
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(" ");
  }

  /// Separates the words in a string with spaces
  String get separateWords {
    final result = StringBuffer();
    for (var i = 0; i < length; i++) {
      final char = this[i];
      if (char.toUpperCase() == char) {
        result.write(" ");
      }
      result.write(char.toLowerCase());
    }
    return result.toString().trim();
  }

  /// Returns the string with the content between [start] and [end] replaced with [replacement]
  String replaceTextBetween(String start, String end, String replacement) {
    final startString = replaceAll("\n", r"\n");
    // ignore: prefer_interpolation_to_compose_strings
    final result =
        startString.replaceAllMapped(RegExp("($start)(.*?)($end)"), (m) {
      return "${m[1]}$replacement${m[3]}";
    });
    return result.replaceAll(r"\n", "\n");
  }

  /// Returns the [String] with the [toInsert] string before the [insertBefore] string, if found.
  String insertBeforeSubstring({
    required String toInsert,
    required String insertBefore,
  }) {
    final position = indexOf(insertBefore);

    if (position == -1) return this;

    if (length < position) {
      return this;
    }
    final before = substring(0, position);
    final after = substring(position, length);
    return before + toInsert + after;
  }

  /// Returns the word containing the provided [index] and the index the word starts at
  Pair<String, int>? getWordAtIndexAndStart(int index) {
    var startLetter = 0;
    var spaceIndexAfter = length;

    for (var i = 0; i < length; i++) {
      if (i > 0 && (this[i - 1] == " " || this[i - 1] == "\n") && i == index) {
        return null;
      }
      if (this[i] == " " || this[i] == "\n") {
        if (i < index) {
          startLetter = i + 1;
        }
        if (i >= index) {
          spaceIndexAfter = i;
          break;
        }
      }
    }

    final word = substring(startLetter, spaceIndexAfter);
    return Pair(word, startLetter);
  }

  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return "${substring(0, maxLength)}...";
  }
}

/// [generateUniqueId] method generates a unique id
String generateUniqueId() {
  const uuid = Uuid();
  return uuid.v4();
}
