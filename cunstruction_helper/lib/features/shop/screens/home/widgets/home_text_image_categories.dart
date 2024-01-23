import 'package:flutter/material.dart';
import '../../../../../common/widgets/categories_image_text/vertical_image_text_home.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageTextCategories(
              image: TImages.companyConstruction,
              title: 'company',
              onTap: () {});
        },
      ),
    );
  }
}
