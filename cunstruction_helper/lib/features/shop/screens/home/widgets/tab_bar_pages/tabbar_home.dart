import 'package:cunstruction_helper/features/shop/screens/category/screen/display_categories/all_categories_display_page.dart';
import 'package:cunstruction_helper/features/shop/screens/home/Home_common/home_tprimaryheader_model.dart';
import 'package:cunstruction_helper/features/shop/screens/home/widgets/cunstruction_type_slider/cunstruction_types_slider.dart';
import 'package:flutter/material.dart';

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
          TprimaryHeaderModel(
              topRowTitle: 'Common Jobs Categories',
              horisontalRow: CategoryRow(),
              more: 'Clicke to more',
              clicktoMorePage: const AllCategoriesPage()),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Top Ads',
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
                const TPromoDotSlider(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text('Top Cunstruction Companies Types',
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CunstrctionTypesRow(),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
