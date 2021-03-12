import 'package:get/route_manager.dart';
import 'package:interview_practical/binding/disease_binding.dart';
import 'binding/binding.dart';
import 'resource/routes.dart';
import 'ui/page/disease_page.dart';
import 'ui/page/splash_page.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    //Splash screen
    GetPage(
        name: firstLaunchRoute,
        page: () => SplashPage(),
        binding: SplashBinding()),

    //Disease screen
    GetPage(
        name: diseaseRoute,
        page: () => DiseasePage(),
        binding: DiseaseBinding()),
  ];


}
