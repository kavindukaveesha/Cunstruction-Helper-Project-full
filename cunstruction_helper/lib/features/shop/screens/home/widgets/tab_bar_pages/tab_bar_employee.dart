import 'package:cunstruction_helper/common/widgets/profile_card/profile_card.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/employee_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/widgets/categories_image_text/vertical_image_text_home.dart';
import '../../../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../home_text_image_categories.dart';
import '../promo_slider.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
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
                              Text('Top Employees',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const EMployeesList());
                                },
                                child: const Text(
                                  "Click to more..",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400),
                                ),
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

        //  card row

        SizedBox(
          
          width: double.infinity,
          height: 410,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return ProfileCard(
                  fullName: "Kavindu Kaveesha",
                  ratelow: 25000,
                  rateHeigh: 35000,
                  title: "Softwaren Engineer",
                  category: "It",
                  location: "Colombo",
                  onHirePressed: () {},
                  image: TImages.loginImg);
            },
          ),
        )
      ]),
    );
  }
}
