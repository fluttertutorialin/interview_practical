import 'package:get/get.dart';
import 'package:interview_practical/model/disease/disease_data.dart';
import 'package:interview_practical/model/diseasedetail/member_data.dart';
import 'package:interview_practical/model/report/report_response.dart';
import 'package:interview_practical/shared/repository/network_repository.dart';

class DiseaseController extends GetxController {
  static DiseaseController get to => Get.find();
  var _networkRepository = Get.find<NetworkRepository>();

  var _diseaseReportList = <ReportResponse>[];
  var diseaseReportRxList = RxList<ReportResponse>([]);

  var _diseaseDataList = <DiseaseData>[];
  var _memberDataList = <MemberData>[];

  @override
  Future<void> onInit() async {
    super.onInit();

    await _getDiseaseFromAsset();
    await _getDiseaseDetailFromAsset();
    _getReport();
  }

  _getDiseaseFromAsset() async {
    await _networkRepository.diseaseFromAsset().then((value) {
      _diseaseDataList = value.diseaseData;
    });
  }

  _getDiseaseDetailFromAsset() async {
    await _networkRepository.diseaseDetailFromAsset().then((value) {
      _memberDataList = value.memberData;
    });
  }

  _getReport() {
    if (_diseaseDataList.isNotEmpty && _memberDataList.isNotEmpty) {
      _diseaseReportList = [];
      int diseaseCount;
      List<ReportData> reportDataList;

      _diseaseDataList.forEach((diseaseElement) {
        diseaseCount = 0;
        reportDataList = [];

        _memberDataList.forEach((memberElement) {
          if (memberElement.diseaseIds.contains(diseaseElement.id.toString())) {
            reportDataList.add(ReportData(
                memberId: memberElement.id.toString(),
                memberName: memberElement.name));
            diseaseCount++;
          }
        });

        _diseaseReportList.add(ReportResponse(
            diseaseId: diseaseElement.id.toString(),
            diseaseName: diseaseElement.title,
            totalDisease: diseaseCount,
            reportDataList: reportDataList));
      });

      diseaseReportRxList.addAll(_diseaseReportList.obs);
    }
  }
}
