import "package:supabase_flutter/supabase_flutter.dart";

import "/data/repositories/_repositories.dart";

//TODO: Move

class ThemeConfiguration {
  final ThemeDataSourceType dataSourceType;
  final String? path;
  final SupabaseClient? supabaseClient;
  const ThemeConfiguration.supabase({
    this.dataSourceType = ThemeDataSourceType.supabase,
    required this.supabaseClient,
  }) : path = null;

  const ThemeConfiguration.assets({
    this.dataSourceType = ThemeDataSourceType.assets,
    required String rootBundleKey,
  })  : supabaseClient = null,
        path = rootBundleKey;

  const ThemeConfiguration.local({this.dataSourceType = ThemeDataSourceType.local})
      : path = null,
        supabaseClient = null;

  const ThemeConfiguration.api({
    required String urlPath,
    this.dataSourceType = ThemeDataSourceType.api,
  })  : path = urlPath,
        supabaseClient = null;

  const ThemeConfiguration.firestore({
    required String collectionName,
    this.dataSourceType = ThemeDataSourceType.firestore,
  })  : path = collectionName,
        supabaseClient = null;
}
