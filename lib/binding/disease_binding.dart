import 'package:get/get.dart';
import 'package:interview_practical/controller/controller.dart';

class DiseaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiseaseController(), fenix: false);
  }
}
