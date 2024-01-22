import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_app.dart';
import 'widgets/home_text_image_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// Home header
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),

                // / Home AppBar
                const THomeAppBar(),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Searchbar
                const TSearchContainer(text: 'Search Want Your Want'),
                const SizedBox(height: 10),

                /// Categories
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Heading
                        Text('Categories',
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        const THomeCategories(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 2,
                    left: 40,
                    child: Text('More',
                        style: Theme.of(context).textTheme.headlineSmall)),
              ],
            ),
          ),

          /// Body Banner
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
        ],
      ),
    );
  }
}
