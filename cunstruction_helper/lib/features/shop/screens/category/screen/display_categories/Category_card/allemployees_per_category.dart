import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../utils/constants/colors.dart';
import 'package:cunstruction_helper/common/widgets/filter_buttons/filter_buttons.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/controller/get_all_employees.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';

import 'package:cunstruction_helper/features/shop/screens/Employee/screen/display_customers/vertical_employee_list.dart';
import 'package:cunstruction_helper/features/shop/screens/category/model/Category_model.dart';

class AllEmployeesPerCategory extends StatefulWidget {
  final List<CategoryModel> categories;
  final int categoryIndex;

  AllEmployeesPerCategory({
    Key? key,
    required this.categories,
    required this.categoryIndex,
  }) : super(key: key);

  @override
  State<AllEmployeesPerCategory> createState() => _AllEmployeesPerCategory();
}

class _AllEmployeesPerCategory extends State<AllEmployeesPerCategory> {
  EmployeeController employeeController = EmployeeController();

  @override
  Widget build(BuildContext context) {
    // Get the selected category name
    String categoryName = widget.categories[widget.categoryIndex].title;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30.0,
        backgroundColor: TColors.appPrimaryColor,
        title: Text(
          'All Employees in $categoryName', // Set category name as title
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FilterButtonsRow(),
                  FutureBuilder<List<EmployeeModel>>(
                    future: employeeController.fetchEmployees(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // Return a loading indicator or placeholder widget
                        return const Text('');
                      } else if (snapshot.hasError) {
                        // Handle errors
                        return Text('Error: ${snapshot.error}');
                      } else {
                        // Display your GridView using the fetched data
                        List<EmployeeModel> employees = snapshot.data!;
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              const Text('All'),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('${employees.length}')
                            ],
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 8.0),
                  VerticalEmployeesList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
