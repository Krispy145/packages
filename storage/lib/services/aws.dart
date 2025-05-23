import "package:aws_client/s3_2006_03_01.dart";
import "package:cross_file/cross_file.dart";

import "_base.dart";

class AwsS3StorageService implements BaseStorageService {
  final S3 _s3Client;
  final String _bucketName;

  AwsS3StorageService({
    required String region,
    required String bucketName,
    required String accessKey,
    required String secretKey,
  })  : _s3Client = S3(
          region: region,
          credentials: AwsClientCredentials(
            accessKey: accessKey,
            secretKey: secretKey,
          ),
        ),
        _bucketName = bucketName;

  @override
  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  }) async {
    try {
      final fileBytes = await file.readAsBytes();
      await _s3Client.putObject(
        bucket: _bucketName,
        key: file.name,
        body: fileBytes,
      );

      final location = await _s3Client.getBucketLocation(bucket: _bucketName);
      final region = location.locationConstraint?.value ?? "us-east-1";
      final fileUrl =
          "https://$_bucketName.s3.$region.amazonaws.com/${file.name}";

      return fileUrl;
    } catch (e) {
      throw Exception("Failed to upload file to AWS S3: $e");
    }
  }

  @override
  Future<void> deleteFile(String url) async {
    try {
      final key = Uri.parse(url).pathSegments.last;
      await _s3Client.deleteObject(bucket: _bucketName, key: key);
    } catch (e) {
      throw Exception("Failed to delete file from AWS S3: $e");
    }
  }

  @override
  Future<XFile?> downloadFile(String url,
      {required bool downloadToDevice,}) async {
    try {
      final key = Uri.parse(url).pathSegments.last;
      final response = await _s3Client.getObject(bucket: _bucketName, key: key);
      final fileBytes = response.body;
      return XFile.fromData(fileBytes!);
    } catch (e) {
      throw Exception("Failed to download file from AWS S3: $e");
    }
  }
}
