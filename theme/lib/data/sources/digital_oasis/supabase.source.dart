import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:utilities/data_sources/remote/supabase.dart';

import '_source.dart';

/// [SupabaseDigitalOasisDataSource] is a class that implements [DigitalOasisDataSource] interface.
class SupabaseDigitalOasisDataSource<T> extends SupabaseDataSource<T> implements DigitalOasisDataSource<T> {
  /// [SupabaseDigitalOasisDataSource] constructor.
  SupabaseDigitalOasisDataSource(
    super.tableName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  }) : super(
          client: SupabaseClient(
            "https://wwgjedzisjwcutjmwczk.supabase.co",
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind3Z2plZHppc2p3Y3V0am13Y3prIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE4Njg2NzMsImV4cCI6MjAyNzQ0NDY3M30.QEBOJExUreDTIEXJlDTUJBu4MUPoqYxaeSiPQCJOJ3U",
          ),
        );
}
