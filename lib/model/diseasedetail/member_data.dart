class MemberData {
  int id;
  String name;
  String diseaseIds;

  MemberData({this.id, this.name, this.diseaseIds});

  MemberData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    diseaseIds = json['disease_ids'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['disease_ids'] = this.diseaseIds;
    return data;
  }
}

