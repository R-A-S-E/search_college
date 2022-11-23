// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UniversityModel {
  String country;
  String domains;
  String webPage;
  String alphatwoCode;
  String name;
  String stateProvince;
  UniversityModel({
    required this.country,
    required this.domains,
    required this.webPage,
    required this.alphatwoCode,
    required this.name,
    required this.stateProvince,
  });

  UniversityModel copyWith({
    String? country,
    String? domains,
    String? webPage,
    String? alphatwoCode,
    String? name,
    String? stateProvince,
  }) {
    return UniversityModel(
      country: country ?? this.country,
      domains: domains ?? this.domains,
      webPage: webPage ?? this.webPage,
      alphatwoCode: alphatwoCode ?? this.alphatwoCode,
      name: name ?? this.name,
      stateProvince: stateProvince ?? this.stateProvince,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': country,
      'domains': domains,
      'webPage': webPage,
      'alphatwoCode': alphatwoCode,
      'name': name,
      'stateProvince': stateProvince,
    };
  }

  factory UniversityModel.fromMap(Map<String, dynamic> map) {
    return UniversityModel(
      country: map['country'] as String,
      domains: map['domains'] as String,
      webPage: map['webPage'] as String,
      alphatwoCode: map['alphatwoCode'] as String,
      name: map['name'] as String,
      stateProvince: map['stateProvince'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UniversityModel.fromJson(String source) =>
      UniversityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UniversityModel(country: $country, domains: $domains, webPage: $webPage, alphatwoCode: $alphatwoCode, name: $name, stateProvince: $stateProvince)';
  }

  @override
  bool operator ==(covariant UniversityModel other) {
    if (identical(this, other)) return true;

    return other.country == country &&
        other.domains == domains &&
        other.webPage == webPage &&
        other.alphatwoCode == alphatwoCode &&
        other.name == name &&
        other.stateProvince == stateProvince;
  }

  @override
  int get hashCode {
    return country.hashCode ^
        domains.hashCode ^
        webPage.hashCode ^
        alphatwoCode.hashCode ^
        name.hashCode ^
        stateProvince.hashCode;
  }
}
