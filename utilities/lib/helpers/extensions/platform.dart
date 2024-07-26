import "package:flutter/foundation.dart";
import "package:universal_io/io.dart";

extension PlatformExtension on Platform {
  static bool get hasKeyboard => Platform.isLinux || Platform.isMacOS || Platform.isWindows || kIsWeb;
}
