import 'package:get/get.dart';

import '../../screens/onboarding/onboarding.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  // create boolean value to check animation is start or not
  RxBool animate = false.obs;
  // this method is handle the animation
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));

    animate.value = true;

    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(const OnBoardingScreen());
  }
}
