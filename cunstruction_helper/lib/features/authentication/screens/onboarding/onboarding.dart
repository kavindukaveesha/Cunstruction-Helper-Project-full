import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controller/controllers_onboarding/onboarding_controller.dart';
import 'widget/onboarding_dot_navigation.dart';
import 'widget/onboarding_next_button.dart';
import 'widget/onboarding_page.dart';
import 'widget/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// OnBoarding Controller to handle logic
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBrdTitle1,
                subTitle: TTexts.onBrdSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBrdTitle2,
                subTitle: TTexts.onBrdSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBrdTitle3,
                subTitle: TTexts.onBrdSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
