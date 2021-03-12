import 'member_data.dart';

class DiseaseDetailResponse {
  List<MemberData> memberData;

  DiseaseDetailResponse({this.memberData});

  DiseaseDetailResponse.fromJson(Map<String, dynamic> json) {
    if (json['memberData'] != null) {
      memberData = <MemberData>[];
      json['memberData'].forEach((v) {
        memberData.add(new MemberData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.memberData != null) {
      data['memberData'] = this.memberData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
