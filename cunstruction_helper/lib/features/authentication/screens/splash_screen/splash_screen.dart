import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:cunstruction_helper/utils/constants/sizes.dart';
import 'package:cunstruction_helper/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../../../../common/fade_in_animation/animation_design.dart';
import '../../../../common/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common/fade_in_animation/fade_in_animation_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    FadeInAnimationController.find.startAnimation();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AppFadeAnimation(
              durationInMs: 1600,
              animatePosition: AnimatePosition(
                  topAfter: TSizes.appDefaultsize * 4, topBefore: -30),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: controller.animate.value ? 1 : 0,
                child: Column(
                  children: [
                    Text(
                      TTexts.appName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      TTexts.splashScreenSubTitle1,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      TTexts.splashScreenSubTitle1,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              )),
          AppFadeAnimation(
            durationInMs: 1600,
            animatePosition: AnimatePosition(leftAfter: 0, leftBefore: 0),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: controller.animate.value ? 1 : 0,
              child: const Image(
                image: AssetImage(
                  TImages.splashImg,
                ),
                height: 400,
              ),
            ),
          ),
          AppFadeAnimation(
              durationInMs: 1600,
              animatePosition:
                  AnimatePosition(bottunAfter: 20, bottunBefore: -30),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: controller.animate.value ? 1 : 0,
                child: Text(
                  TTexts.developby,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ))
        ],
      ),
    );
  }
}
