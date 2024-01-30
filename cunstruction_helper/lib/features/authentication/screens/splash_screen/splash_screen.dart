import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:cunstruction_helper/utils/constants/sizes.dart';
import 'package:cunstruction_helper/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../../../../common/fade_in_animation/animation_design.dart';
import '../../../../common/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common/fade_in_animation/fade_in_animation_model.dart';
import '../../controller/splash_screen_controler/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    SplashController.startAnimation();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: SplashController.animate.value
                    ? TSizes.appDefaultsize * 4
                    : -30,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: SplashController.animate.value ? 1 : 0,
                  child: Column(
                    children: [
                      Text(
                        TTexts.appName,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        'Subtitle1',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        'splashScreenSubTitle2',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: 100,
                left: SplashController.animate.value ? 10 : -40,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: SplashController.animate.value ? 1 : 0,
                  child: const Image(
                    image: AssetImage(
                      TImages.splashImg,
                    ),
                    height: 400,
                  ),
                )),
          ),
          Obx(() => AnimatedPositioned(
                duration: Duration(milliseconds: 1000),
                bottom: SplashController.animate.value ? 20 : -30,
                child: Text(
                  TTexts.developby,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )),
        ],
      ),
    );
  }
}
