import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [WebBrowserStore] is a class that uses [_WebBrowserStore] to manage state of the webBrowsers feature.
class WebBrowserStore = _WebBrowserStore with _$WebBrowserStore;

/// [_WebBrowserStore] is a class that manages the state of the webBrowsers feature.
abstract class _WebBrowserStore with LoadStateStore, Store {
  final String url;
  final String title;

  /// [_WebBrowserStore] constructor.
  _WebBrowserStore({required this.url, required this.title}) {
    setLoaded();
  }
}
