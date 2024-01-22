import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../home_text_image_categories.dart';
import '../promo_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Top Categories',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                                const Text(
                                  "Click to more..",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const SizedBox(height: TSizes.spaceBtwItems),
                            const THomeCategories(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: TSizes.appDefaultsize,
                ),
                const TSearchContainer(text: 'Search Want Your Want'),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TPromoDotSlider(
                  banners: [
                    TImages.constructionBanner1,
                    TImages.constructionBanner2,
                    TImages.constructionBanner3
                  ],
                ),
              ],
            ),
          ),
          const Text('hello'),
          const SizedBox(
            height: 300,
          ),
          const Text('hello'),
          const SizedBox(
            height: 300,
          ),
          const Text('hello'),
          const SizedBox(
            height: 300,
          ),
          const Text('hello'),
          const SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }
}
