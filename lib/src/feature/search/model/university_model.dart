class UniversityModel {
  String? alphaTwoCode;
  String? country;
  String? stateProvince;
  List<String>? domains;
  String? name;
  List<String>? webPages;

  UniversityModel(
      {this.alphaTwoCode,
      this.country,
      this.stateProvince,
      this.domains,
      this.name,
      this.webPages});

  UniversityModel.fromJson(Map<String, dynamic> json) {
    alphaTwoCode = json['alpha_two_code'];
    country = json['country'];
    stateProvince = json['state-province'];
    domains = json['domains'].cast<String>();
    name = json['name'];
    webPages = json['web_pages'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['alpha_two_code'] = alphaTwoCode;
    data['country'] = country;
    data['state-province'] = stateProvince;
    data['domains'] = domains;
    data['name'] = name;
    data['web_pages'] = webPages;
    return data;
  }
}
