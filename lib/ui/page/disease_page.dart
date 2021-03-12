import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_practical/controller/controller.dart';
import 'package:interview_practical/resource/style.dart';
import 'package:interview_practical/resource/value.dart';

class DiseasePage extends GetView<DiseaseController> {
  @override
  build(BuildContext context) => Scaffold(
      appBar: AppBar(
          elevation: 0.5,
          centerTitle: true,
          title: Text(appName, style: appBarTitleStyle)),
      body: Obx(() => ListView.builder(
          itemCount: DiseaseController.to.diseaseReportRxList.length,
          itemBuilder: (BuildContext context, int index) {
            var report = DiseaseController.to.diseaseReportRxList[index];
            return GestureDetector(
                onTap: () {
                  /*
                  TODO DATA PASS NEW SCREEN OR DIALOG
                  report.reportDataList.length
                  */
                },
                child: Card(
                    elevation: 0.2,
                    child: Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        margin: EdgeInsets.only(top: 2, bottom: 2),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(report.diseaseName, style: diseaseNameStyle),
                              Text('(${report.totalDisease})',
                                  style: diseaseTotalCountStyle)
                            ]))));
          })));
}
