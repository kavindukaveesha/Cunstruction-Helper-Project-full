import 'package:cunstruction_helper/common/widgets/employee_profile_card/employee_profile_card.dart';
import 'package:cunstruction_helper/common/widgets/employee_profile_card/employee_profile_card.dart';
import 'package:flutter/material.dart';

import '../../Employee/controller/get_all_employees.dart';
import '../../Employee/model/EmployeeModel.dart';

class SearchEmp extends StatelessWidget {
  SearchEmp({Key? key}) : super(key: key);
  final EmployeeController employeeController = EmployeeController();

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
          return ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, index) {
              EmployeeModel employee =
                  employees[index]; // Retrieve the current employee
              return InkWell(
                onTap: () {
                  // Handle onTap event
                  // Example: Get.to(() => YourNextScreen());
                },
                child: EmployeeProfileCard(
                  fullName: '${employee.firstName} ${employee.lastName}',
                  rank: 'rank',
                  image: employee.image,
                  rate: 'rate',
                  isverified: 'Verified',
                  jobTitle: 'Software Engineer',
                  // Use the category from the employee
                  experience: '2',
                  rangeLow: 100000,
                  rangeHigh: 120000,
                  onHirePressed: () {
                    // Handle onHirePressed event
                  },
                ),
              );
            },
          );
        }
      },
    );
  }
}
