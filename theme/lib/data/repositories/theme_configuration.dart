import "package:supabase_flutter/supabase_flutter.dart";
import "package:theme/app/store.dart";

import "/data/repositories/_repositories.dart";

class ThemeConfiguration {
  final String id;

  final ThemeDataSourceType dataSourceType;
  final String? path;
  final SupabaseClient? supabaseClient;
  const ThemeConfiguration.supabase({
    this.id = primaryThemeId,
    this.dataSourceType = ThemeDataSourceType.supabase,
    required this.supabaseClient,
  }) : path = null;

  const ThemeConfiguration.assets({
    this.id = primaryThemeId,
    this.dataSourceType = ThemeDataSourceType.assets,
    required String rootBundleKey,
  })  : supabaseClient = null,
        path = rootBundleKey;

  const ThemeConfiguration.local({
    this.id = primaryThemeId,
    this.dataSourceType = ThemeDataSourceType.local,
  })  : path = null,
        supabaseClient = null;

  const ThemeConfiguration.api({
    this.id = primaryThemeId,
    required String urlPath,
    this.dataSourceType = ThemeDataSourceType.api,
  })  : path = urlPath,
        supabaseClient = null;

  const ThemeConfiguration.firestore({
    this.id = primaryThemeId,
    required String collectionPath,
    this.dataSourceType = ThemeDataSourceType.firestore,
  })  : path = collectionPath,
        supabaseClient = null;
}
