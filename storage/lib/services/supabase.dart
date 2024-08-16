import 'package:supabase/supabase.dart';
import 'package:universal_io/io.dart';

import '../interface.dart';

class SupabaseStorageService implements IStorageService {
  final SupabaseClient _supabase;
  final String bucketName;

  SupabaseStorageService(this._supabase, {required this.bucketName});

  @override
  Future<String> uploadFile({
    required String filePath,
    required String fileName,
    bool isPrivate = false,
  }) async {
    return await _supabase.storage.from(bucketName).upload(fileName, File(filePath));
  }
}
