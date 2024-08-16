import 'dart:io';

import 'package:aws_client/s3_2006_03_01.dart';

import '../interface.dart';

class AwsS3StorageService implements IStorageService {
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
    required String filePath,
    required String fileName,
    bool isPrivate = false,
  }) async {
    try {
      // Read the file as bytes
      final fileBytes = File(filePath).readAsBytesSync();

      // Upload the file to S3
      await _s3Client.putObject(
        bucket: _bucketName,
        key: fileName,
        body: fileBytes,
      );

      final _location = await _s3Client.getBucketLocation(bucket: _bucketName);
      // Generate the file URL
      final fileUrl = 'https://$_bucketName.s3.${_location.locationConstraint?.value}.amazonaws.com/$fileName';

      return fileUrl;
    } catch (e) {
      throw Exception('Failed to upload file to AWS S3: $e');
    } finally {
      _s3Client.close();
    }
  }
}
