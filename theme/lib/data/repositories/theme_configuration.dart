import "package:supabase_flutter/supabase_flutter.dart";

import "/data/repositories/_repositories.dart";

//TODO: Move

class ThemeConfiguration {
  final DataSourceTypes dataSourceType;
  final String? path;
  final SupabaseClient? supabaseClient;
  const ThemeConfiguration.supabase({
    this.dataSourceType = DataSourceTypes.supabase,
    required this.supabaseClient,
  }) : path = null;

  const ThemeConfiguration.assets({
    this.dataSourceType = DataSourceTypes.assets,
    required String rootBundleKey,
  })  : supabaseClient = null,
        path = rootBundleKey;

  const ThemeConfiguration.local({this.dataSourceType = DataSourceTypes.local})
      : path = null,
        supabaseClient = null;

  const ThemeConfiguration.api({
    required String urlPath,
    this.dataSourceType = DataSourceTypes.api,
  })  : path = urlPath,
        supabaseClient = null;

  const ThemeConfiguration.firestore({
    required String collectionName,
    this.dataSourceType = DataSourceTypes.firestore,
  })  : path = collectionName,
        supabaseClient = null;

  const ThemeConfiguration.secure({
    this.dataSourceType = DataSourceTypes.secure,
  })  : path = null,
        supabaseClient = null;
}
