class HLSManifestLanguage {
  final String? code;
  final String? name;
  final String? nativeName;
  String? url;

  HLSManifestLanguage(this.code, this.name, {this.nativeName, this.url});

  factory HLSManifestLanguage.fromJson(Map<String, dynamic> json) {
    return HLSManifestLanguage(
      json["code"] as String?,
      json["name"] as String?,
      nativeName: json["nativeName"] as String?,
      url: json["url"] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "name": name,
      "nativeName": nativeName,
      "url": url,
    };
  }

  static List<dynamic> toJsonFromList(List<HLSManifestLanguage> languages) {
    return languages.map((a) => a.toJson()).toList();
  }
}
