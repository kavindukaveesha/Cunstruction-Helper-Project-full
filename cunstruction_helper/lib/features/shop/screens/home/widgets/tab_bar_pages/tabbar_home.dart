import 'package:cunstruction_helper/features/shop/screens/category/screen/display_categories/all_categories_display_page.dart';
import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../category/screen/home_page_category_row/Category_row_list.dart';
import '../slider/screen/promo_slider.dart';

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
                                TextButton(
                                  onPressed: () {
                                    Get.to(() => const AllCategoriesPage());
                                  },
                                  child: const Text(
                                    "Click to more..",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                        color: TColors.appAccentColor),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: TSizes.spaceBtwItems),
                            CategoryRow(),
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
              children: [TPromoDotSlider()],
            ),
          ),
        ],
      ),
    );
  }
}
