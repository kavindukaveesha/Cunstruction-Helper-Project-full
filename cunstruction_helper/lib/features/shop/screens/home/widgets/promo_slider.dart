import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/banner_image/rounded_image_banner.dart';
import '../../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class TPromoDotSlider extends StatelessWidget {
  const TPromoDotSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    Controller.updatePageIndicator(index)),
            items: banners
                .map((url) => TRoundedBannerImage(
                      imageUrl: url,
                    ))
                .toList()),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 30,
                    height: 8,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: Controller.carousalCurrentIndex.value == i
                        ? TColors.appPrimaryColor
                        : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
