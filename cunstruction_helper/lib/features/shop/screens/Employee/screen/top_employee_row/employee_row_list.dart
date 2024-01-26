import 'package:cunstruction_helper/features/shop/screens/Employee/controller/get_all_employees.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';

import 'package:flutter/material.dart';

import '../../../../../../../../common/widgets/categories_image_text/vertical_image_text_home.dart';

// Create a StatelessWidget named CategoryRow
class EmployeesRow extends StatelessWidget {
  // Instantiate a CategoryController for fetching categories
  final EmployeeController employeeController = EmployeeController();

  // Constructor for the CategoryRow widget
  EmployeesRow({super.key});

  // Build method for constructing the widget
  @override
  Widget build(BuildContext context) {
    // Use FutureBuilder to asynchronously fetch a list of CategoryModel
    return FutureBuilder<List<EmployeeModel>>(
      future: employeeController
          .fetchEmployees(), // Fetch categories using the CategoryController
      builder: (context, snapshot) {
        // Check the connection state for loading, and show a loading indicator if waiting.until get data show CircularProgressIndicator
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        // Check for errors, and display an error message if there's an error
        else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        // If there are no errors, display the ListView with fetched data
        else {
          // Extract the list of CategoryModel from the snapshot data
          final List<EmployeeModel> employees = snapshot.data!;

          // Return a horizontal ListView of TVerticalImageTextCategories
          return SizedBox(
            width: double.infinity,
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: employees.length,
              itemBuilder: (_, index) {
                // Display each category using the TVerticalImageTextCategories widget
                return TVerticalImageTextCategories(
                  image: employees[index].image,
                  title:
                      '${employees[index].firstName} ${employees[index].lastName}',
                  // onTap: () {
                  //   // goto  according category Details display page.
                  //   Get.to(() => SearchingResultModelPage(
                  //       categories: companies, categoryIndex: index));
                  // }, // Specify the onTap callback (currently empty)
                );
              },
            ),
          );
        }
      },
    );
  }
}
