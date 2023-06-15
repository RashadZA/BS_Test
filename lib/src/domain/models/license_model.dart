import 'dart:convert';

class LicenseModel {
  String key = "";
  String name = "";
  String spdxId = "";
  String url = "";
  String nodeId = "";
  LicenseModel({
    required this.key,
    required this.name,
    required this.spdxId,
    required this.url,
    required this.nodeId,
  });

  LicenseModel copyWith({
    String? key,
    String? name,
    String? spdxId,
    String? url,
    String? nodeId,
  }) {
    return LicenseModel(
      key: key ?? this.key,
      name: name ?? this.name,
      spdxId: spdxId ?? this.spdxId,
      url: url ?? this.url,
      nodeId: nodeId ?? this.nodeId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
      'spdxId': spdxId,
      'url': url,
      'nodeId': nodeId,
    };
  }

  factory LicenseModel.fromMap(Map<String, dynamic> map) {
    return LicenseModel(
      key: map['key'] != null ? map['key'] as String  : "",
      name: map['name'] != null ? map['name'] as String  : "",
      spdxId: map['spdxId'] != null ? map['spdxId'] as String : "",
      url: map['url'] != null ? map['url'] as String : "",
      nodeId: map['nodeId'] != null ? map['nodeId'] as String : "",
    );
  }

  String toJson() => json.encode(toMap());

  factory LicenseModel.fromJson(String source) => LicenseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LicenseModel(key: $key, name: $name, spdxId: $spdxId, url: $url, nodeId: $nodeId)';
  }

  @override
  bool operator ==(covariant LicenseModel other) {
    if (identical(this, other)) return true;

    return
      other.key == key &&
          other.name == name &&
          other.spdxId == spdxId &&
          other.url == url &&
          other.nodeId == nodeId;
  }

  @override
  int get hashCode {
    return key.hashCode ^
    name.hashCode ^
    spdxId.hashCode ^
    url.hashCode ^
    nodeId.hashCode;
  }
}