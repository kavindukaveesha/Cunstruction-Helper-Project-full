import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TVerticalImageTextCategories extends StatelessWidget {
  const TVerticalImageTextCategories({
    super.key,
    required this.image,
    required this.title,
    this.textColor = const Color.fromARGB(255, 0, 0, 0),
    this.backgroundColor = TColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwSections),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(image),
                ),
              ),
            ),

            /// Text
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
