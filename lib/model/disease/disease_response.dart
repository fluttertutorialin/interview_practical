import 'disease_data.dart';

class DiseaseResponse {
  List<DiseaseData> diseaseData;

  DiseaseResponse({this.diseaseData});

  DiseaseResponse.fromJson(Map<String, dynamic> json) {
    if (json['diseaseData'] != null) {
      diseaseData = <DiseaseData>[];
      json['diseaseData'].forEach((v) {
        diseaseData.add(new DiseaseData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.diseaseData != null) {
      data['diseaseData'] = this.diseaseData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
