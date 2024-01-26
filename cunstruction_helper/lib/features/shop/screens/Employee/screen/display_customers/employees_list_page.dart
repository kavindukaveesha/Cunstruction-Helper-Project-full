import 'package:cunstruction_helper/features/shop/screens/Employee/controller/get_all_employees.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';

import 'package:flutter/material.dart';

import '../../../../../../common/widgets/profile_card/profile_card.dart';

class EmployeesList extends StatelessWidget {
  final EmployeeController employeeController = EmployeeController();
  EmployeesList({Key? key}) : super(key: key);

  List<Map<String, dynamic>> categories = [
    {'categoryName': 'Electric'},
    {'categoryName': 'Garden'},
    {'categoryName': 'Plumbing'},
    {'categoryName': 'IT-Solution'},
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EmployeeModel>>(
      future: employeeController.fetchEmployees(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Return a loading indicator or placeholder widget
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // Handle errors
          return Text('Error: ${snapshot.error}');
        } else {
          // Display your GridView using the fetched data
          List<EmployeeModel> employees = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Assuming you have a list of categories with employee lists
                for (var category in categories)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Text(
                              category['categoryName'],
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const Text('(${6})')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 410,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            var employee = employees[
                                index]; // Fix: Change 'em.employeeList' to 'employees'
                            // Note: You need to replace the following variables with actual data from your EmployeeModel

                            return ProfileCard(
                              fullName:
                                  '${employee.firstName} ${employee.lastName}', // Fix: Use the category name
                              rank: 'rank',
                              image: employee.image,
                              rate: 'rate',
                              isverified: 'Verified',
                              jobTitle: 'Software Enginner',
                              category: category[
                                  'categoryName'], // Fix: Use the category name
                              location: 'location',
                              rangeLow: 10000,
                              rangeHigh: 12000,
                              onHirePressed: () {},
                            );
                          },
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          );
        }
      },
    );
  }
}
