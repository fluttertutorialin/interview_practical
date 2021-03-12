import 'package:get/get.dart';
import 'package:interview_practical/model/disease/disease_response.dart';
import 'package:interview_practical/model/diseasedetail/disease_detail_response.dart';
import 'package:interview_practical/shared/provider/network_provider.dart';

class NetworkRepository implements NetworkProvider {
  final _networkProvider = Get.find<NetworkProvider>();

  @override
  Future<DiseaseResponse> diseaseFromAsset() {
    return _networkProvider.diseaseFromAsset();
  }

  @override
  Future<DiseaseDetailResponse> diseaseDetailFromAsset() {
    return _networkProvider.diseaseDetailFromAsset();
  }
}
