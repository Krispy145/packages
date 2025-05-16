import "package:flutter/material.dart";
import "package:flutter_branch_sdk/flutter_branch_sdk.dart";

enum QRCodeType {
  /// QR code type for deep link in Uint8List format.
  raw,

  /// QR code type for deep link in Image format.
  image;
}

/// A model for the QR code.
class QRCodeModel {
  /// The type of the QR code.
  QRCodeType type;

  /// The primary color of the QR code.
  Color? primaryColor;

  /// The background color of the QR code.
  Color? backgroundColor;

  /// The center logo URL of the QR code.
  String? centerLogoUrl;

  /// [QRCodeModel] constructor.
  QRCodeModel({
    this.type = QRCodeType.image,
    this.primaryColor,
    this.backgroundColor,
    this.centerLogoUrl,
  });

  /// Create a QR code from a BranchQrCode.
  BranchQrCode get branchQrCode => BranchQrCode(
        primaryColor: primaryColor ?? Colors.black,
        backgroundColor: backgroundColor ?? Colors.white,
        centerLogoUrl: centerLogoUrl ??
            "https://imgs.search.brave.com/eeXQqmJBU8HLP4PAk2MfhbgoMo7_0FUquL8G_P7IpwU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM5/ODE1MjIwMy9waG90/by9kYXRhLWxhYmVs/aW5nLXF1aWNrLXJl/c3BvbnNlLWNvZGUu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PW9DeWhSYU9oYUpH/ZVJXeFJIblBvWm9Z/RVhkYzBaVGpaZk1U/aTRpMEJoN2c9",
      );
}
