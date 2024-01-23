import 'package:flutter/widgets.dart';

import '../../../../common/widgets/categories_image_text/vertical_image_text_home.dart';
import '../../../../utils/constants/image_strings.dart';

class CategoryRow extends StatelessWidget {
  // this is the list for categories detazils
  // get the data from categories table
  final List<Map<String, String>> categories = [
    {'Category_title': 'category title 1', 'category_image': TImages.wlcImg1},
    {'Category_title': 'category title 2', 'category_image': TImages.facebook},
    {'Category_title': 'category title 3', 'category_image': TImages.google},
    {
      'Category_title': 'category title 4',
      'category_image': TImages.employeeConstruction
    },
    {
      'Category_title': 'category title 5',
      'category_image': TImages.splashImg2
    },
    {'Category_title': 'category title 6', 'category_image': TImages.wlcImg1},
  ];
  CategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, index) {
          return TVerticalImageTextCategories(
            // get image from dAtabase
              image: categories[index]['category_image']!,
              // get category name from databse
              title: categories[index]['Category_title']!,
              onTap: () {});
        },
      ),
    );
  }
}
