import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'app_module.dart';
import 'dependency_injection.dart';
import 'resource/colors.dart';
import 'resource/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white));

  //CALL THE DEPENDENCY INJECTION
  DependencyInjection.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp replace to GetMaterialApp
    return GetMaterialApp(
        initialRoute: firstLaunchRoute,
        getPages: AppPages.pages,
        theme: ThemeData(
            scaffoldBackgroundColor: backgroundColor,
            brightness: Brightness.light,
            accentColor: accentColor,
            primaryColor: primaryColor,
            primarySwatch: primarySwatchColor),
        debugShowCheckedModeBanner: false,
        enableLog: true);
  }
}
