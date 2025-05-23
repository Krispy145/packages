import "package:cross_file/cross_file.dart";
import "package:supabase/supabase.dart";
import "package:universal_io/io.dart";

import "_base.dart";

class SupabaseStorageService implements BaseStorageService {
  final SupabaseClient _supabase;
  final String bucketName;

  SupabaseStorageService(this._supabase, {required this.bucketName});

  @override
  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  }) async {
    final _ioFile = File(file.path);
    return _supabase.storage.from(bucketName).upload(file.name, _ioFile);
  }

  @override
  Future<void> deleteFile(String url) async {
    await _supabase.storage.from(bucketName).remove([url]);
  }

  @override
  Future<XFile?> downloadFile(String url,
      {required bool downloadToDevice,}) async {
    final _response = await _supabase.storage.from(bucketName).download(url);
    final _ioFile = File(url);
    await _ioFile.writeAsBytes(_response);
    return XFile(_ioFile.path);
  }
}
