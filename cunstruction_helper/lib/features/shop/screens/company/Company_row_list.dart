import 'package:flutter/widgets.dart';

import '../../../../common/widgets/categories_image_text/vertical_image_text_home.dart';
import '../../../../utils/constants/image_strings.dart';

class CompanyRow extends StatelessWidget {
  // this is the list for categories detazils
  // get the data from categories table
  final List<Map<String, String>> categories = [
    {'company_title': 'Company title 1', 'company_image': TImages.wlcImg1},
    {'company_title': 'Company title 1', 'company_image': TImages.wlcImg1},
    {'company_title': 'Company title 1', 'company_image': TImages.wlcImg1},
    {'company_title': 'Company title 1', 'company_image': TImages.wlcImg1},
    {'company_title': 'Company title 1', 'company_image': TImages.wlcImg1},
    {'company_title': 'Company title 1', 'company_image': TImages.wlcImg1},
  ];
  CompanyRow({
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
              image: categories[index]['company_image']!,
              // get category name from databse
              title: categories[index]['company_title']!,
              onTap: () {});
        },
      ),
    );
  }
}
