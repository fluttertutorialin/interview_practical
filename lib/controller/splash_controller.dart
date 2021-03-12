import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:interview_practical/resource/routes.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController _controller;
  Animation<Offset> offsetAnimation;

  @override
  void onInit() async {
    super.onInit();

    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    offsetAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -0.8)).animate(
            CurvedAnimation(parent: _controller, curve: Curves.decelerate));
    _controller.forward().then((value) => _controller.reverse());
  }

  @override
  void onReady() {
    super.onReady();
    _launchPage();
  }

  _launchPage() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offNamed(diseaseRoute);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
