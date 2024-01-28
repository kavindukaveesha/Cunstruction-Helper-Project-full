import 'package:cunstruction_helper/common/widgets/display_profile/display_profile_header.dart';
import 'package:cunstruction_helper/common/widgets/display_profile/display_text_area_container.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/expanded_widget.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/controller/get_all_employees.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';
import 'package:cunstruction_helper/features/shop/screens/category/model/Category_model.dart';
import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeProfileDisplayPage extends StatelessWidget {
  final EmployeeModel employeeModel;
  EmployeeProfileDisplayPage({
    super.key,
    required this.employeeModel,
  });
  EmployeeController employeeController = EmployeeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: TColors.appPrimaryColor,
            leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios))),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                    width: 1, color: const Color.fromARGB(255, 160, 160, 160)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DisplayProfileHeader(
                      userName:
                          '${employeeModel.firstName} ${employeeModel.lastName}',
                      image: employeeModel.image,
                      jobCategory: 'fgvfvg',
                      rank: '12',
                      rate: ' 3.5',
                      verified: true),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Informations',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        DisplayTextField(
                            labelText: 'Full Name',
                            text:
                                '${employeeModel.firstName} ${employeeModel.lastName}',
                            icon: Icons.person_outline_rounded),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        DisplayTextField(
                            labelText: 'Age',
                            text: '${employeeModel.age} Years',
                            icon: Icons.cake_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        DisplayTextField(
                            labelText: 'Gender',
                            text: employeeModel.gender,
                            icon: Icons.cake_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        DisplayTextField(
                            labelText: 'Address',
                            text: employeeModel.address,
                            icon: Icons.location_on_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        DisplayTextField(
                            labelText: 'email',
                            text: employeeModel.email,
                            icon: Icons.email_outlined),
                      ],
                    ),
                  ),
                  const Divider(
                    // Add this divider for the black line
                    color: Colors.black,
                    thickness: 1,
                    height: 20,
                    indent: 10,
                    endIndent: 10,
                  ),
                  // Working Experience
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Working And Experience',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const DisplayTextField(
                            labelText: 'Job Category',
                            text: 'category',
                            icon: Icons.category_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const DisplayTextField(
                            labelText: 'Working Experience',
                            text: '3 Years',
                            icon: Icons.work_outline_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const DisplayTextField(
                            labelText: 'Charging per Hour/day',
                            text: 'Rs 25000-35000',
                            icon: Icons.attach_money_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const Divider(
                          // Add this divider for the black line
                          color: Colors.black,
                          thickness: 1,
                          height: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                                width: 1,
                                color:
                                    const Color.fromARGB(255, 223, 222, 222)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ExpandedTextWidget(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                textLength: 300),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Downdload CV',
                                style: Theme.of(context).textTheme.bodyLarge,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
