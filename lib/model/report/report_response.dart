class ReportResponse {
  String diseaseId, diseaseName;
  int totalDisease;
  List<ReportData> reportDataList;

  ReportResponse(
      {this.diseaseId,
      this.diseaseName,
      this.totalDisease,
      this.reportDataList});
}

class ReportData {
  String memberId, memberName;
  ReportData({this.memberId, this.memberName});
}
