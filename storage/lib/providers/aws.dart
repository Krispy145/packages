import "package:aws_client/s3_2006_03_01.dart";
import "package:storage/services/_base.dart";
import "package:storage/services/aws.dart";

import "_base.dart";

class AwsS3StorageProvider extends BaseStorageProvider {
  final AwsClientCredentials credentials;
  final String region;
  final String bucketName;

  AwsS3StorageProvider({
    required this.credentials,
    required this.region,
    required this.bucketName,
  });

  @override
  BaseStorageService getStorageService() {
    return AwsS3StorageService(
      region: region,
      bucketName: bucketName,
      accessKey: credentials.accessKey,
      secretKey: credentials.secretKey,
    );
  }
}
