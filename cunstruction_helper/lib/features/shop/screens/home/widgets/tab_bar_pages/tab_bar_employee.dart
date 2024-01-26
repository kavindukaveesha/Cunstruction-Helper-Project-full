import 'package:cunstruction_helper/features/shop/screens/Employee/screen/display_customers/employees_list_page.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../../../common/widgets/profile_card/profile_card.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../Employee/screen/top_employee_row/employee_row_list.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({super.key});

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  Widget build(BuildContext context) {
    String selectedLocation = 'Colombo';
    String selectedCategory = 'Electric';

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
                              Text('Top Employees',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                            ],
                          ),
                          const SizedBox(height: TSizes.spaceBtwItems),
                          EmployeesRow(),
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
          'Employees',
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
        //  card row
        EmployeesList()
      ],
    ));
  }
}
