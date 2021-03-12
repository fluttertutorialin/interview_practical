import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:interview_practical/model/disease/disease_response.dart';
import 'package:interview_practical/model/diseasedetail/disease_detail_response.dart';
import 'package:interview_practical/resource/api.dart';

class NetworkProvider {
  Future<DiseaseResponse> diseaseFromAsset() async {
    var response = await rootBundle.loadString(diseaseAssetsPath);
    var decodeData = json.decode(response);
    return DiseaseResponse.fromJson(decodeData);
  }

  Future<DiseaseDetailResponse> diseaseDetailFromAsset() async {
    var response = await rootBundle.loadString(diseaseDetailAssetsPath);
    var decodeData = json.decode(response);
    return DiseaseDetailResponse.fromJson(decodeData);
  }
}
