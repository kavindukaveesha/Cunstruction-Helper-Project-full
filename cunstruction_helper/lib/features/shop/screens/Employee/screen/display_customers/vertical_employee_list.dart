import 'package:flutter/material.dart';
import 'package:cunstruction_helper/common/widgets/employee_profile_card/employee_profile_card.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/controller/get_all_employees.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/screen/display_profile/employee_profile_display_page.dart';
import 'package:get/get.dart';

class VerticalEmployeesList extends StatelessWidget {
  final EmployeeController employeeController = EmployeeController();
  VerticalEmployeesList({Key? key}) : super(key: key);

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
          // Display your ListView using the fetched data
          List<EmployeeModel> employees = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 600,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: employees.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, index) {
                  var employee = employees[index];

                  return EmployeeProfileCard(
                    fullName: '${employee.firstName} ${employee.lastName}',
                    rank: 'rank',
                    image: employee.image,
                    rate: 'rate',
                    isverified: 'Verified',
                    jobTitle: 'Software Engineer',
                    experience: '2',
                    rangeLow: 100000,
                    rangeHigh: 120000,
                    onHirePressed: () {
                      Get.to(() => EmployeeProfileDisplayPage(
                            employeeModel: employee,
                          ));
                    },
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}
