import 'package:cunstruction_helper/features/shop/screens/company/all_companies_display_page.dart';
import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../company/Company_row_list.dart';
import '../../../post/application_calling_ad.dart';

class Company extends StatefulWidget {
  const Company({super.key});

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  String selectedLocation = 'Colombo';
  String selectedCategory = 'Electric';
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
                                Text('Top Companies',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                                TextButton(
                                  onPressed: () {
                                    Get.to(() => const AllCompaniesPage());
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
                            CompanyRow(),
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
          Text(
            'Application Calling',
            style: Theme.of(context).textTheme.displaySmall,
          ),

          // Filter ads
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton<String>(
                dropdownColor: const Color.fromARGB(255, 253, 249, 249),
                padding: const EdgeInsets.all(10),
                value: selectedLocation,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLocation = newValue!;
                  });
                },
                items: <String>[
                  'Colombo',
                  'Gampaha',
                  'Kandy',
                  'Anuradapura',
                ]
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
                hint: const Text('Location'),
              ),
              DropdownButton<String>(
                dropdownColor: const Color.fromARGB(255, 253, 249, 249),
                padding: const EdgeInsets.all(10),
                value: selectedCategory,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCategory = newValue!;
                  });
                },
                items: <String>['Electric', 'Garden', 'Plumbing']
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
                hint: const Text('Category'),
              ),
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
                  // Add your filter logic here
                },
              ),
            ],
          ),
          // Filter ads
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            child: Row(
              children: [
                Text(
                  'All Ads',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  '(26)',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap:
                true, // Use shrinkWrap to make ListView height based on its children
            physics:
                const NeverScrollableScrollPhysics(), // Disable scrolling for the ListView
            itemCount:
                4, // Adjust the itemCount based on the number of AdContainers you want
            itemBuilder: (context, index) {
              return const AdContainer();
            },
          ),
        ],
      ),
    );
  }
}
