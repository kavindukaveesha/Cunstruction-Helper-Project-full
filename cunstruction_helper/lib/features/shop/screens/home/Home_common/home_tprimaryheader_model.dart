import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../searching_result/pages/searching page.dart';

class TprimaryHeaderModel extends StatelessWidget {
  final String topRowTitle;
  final String more;
  final Widget horisontalRow;
  final Widget clicktoMorePage;

  const TprimaryHeaderModel({
    Key? key,
    required this.topRowTitle,
    required this.horisontalRow,
    required this.more,
    required this.clicktoMorePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TPrimaryHeaderContainer(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(topRowTitle,
                              style: Theme.of(context).textTheme.headlineSmall),
                          TextButton(
                            onPressed: () {
                              Get.to(() => clicktoMorePage);
                            },
                            child: Text(
                              more,
                              style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: TColors.appAccentColor),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      horisontalRow
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.appDefaultsize,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: SearchBarContainer(),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
