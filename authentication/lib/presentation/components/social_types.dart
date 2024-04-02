import 'package:authentication/data/models/auth_params.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtonType {
  final IconData iconData;
  final Color backgroundColor;
  final AuthParams params;
  final String name;

  SocialButtonType.apple({
    String? name,
    this.iconData = FontAwesomeIcons.apple,
    this.backgroundColor = Colors.black,
    required this.params,
  }) : name = name ?? params.authType.name {
    assert(params.authType == AuthType.apple);
  }

  SocialButtonType.facebook({
    String? name,
    this.iconData = FontAwesomeIcons.facebook,
    this.backgroundColor = const Color(0xFF3b5998),
    required this.params,
  }) : name = name ?? params.authType.name {
    assert(params.authType == AuthType.facebook);
  }

  SocialButtonType.github({
    String? name,
    this.iconData = FontAwesomeIcons.github,
    this.backgroundColor = Colors.black,
    required this.params,
  }) : name = name ?? params.authType.name {
    assert(params.authType == AuthType.github);
  }

  SocialButtonType.google({
    String? name,
    this.iconData = FontAwesomeIcons.google,
    this.backgroundColor = Colors.blue,
    required this.params,
  }) : name = name ?? params.authType.name {
    assert(params.authType == AuthType.google);
  }

  SocialButtonType.x({
    String? name,
    this.iconData = FontAwesomeIcons.twitter,
    this.backgroundColor = const Color(0xFF1DA1F2),
    required this.params,
  }) : name = name ?? params.authType.name {
    assert(params.authType == AuthType.x);
  }

  String get displayName => name[0].toUpperCase() + name.substring(1);
}
