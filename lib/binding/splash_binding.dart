import 'package:get/get.dart';
import 'package:interview_practical/controller/controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), fenix: false);
  }
}
