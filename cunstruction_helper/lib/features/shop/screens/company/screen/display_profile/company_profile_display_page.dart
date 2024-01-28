import 'package:cunstruction_helper/common/widgets/display_profile/display_profile_header.dart';
import 'package:cunstruction_helper/common/widgets/display_profile/display_text_area_container.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/expanded_widget.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/controller/get_all_employees.dart';
import 'package:cunstruction_helper/features/shop/screens/company/model/company_model.dart';

import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyProfileDisplayPAge extends StatelessWidget {
  final CompanyModel companyModel;
  CompanyProfileDisplayPAge({
    super.key,
    required this.companyModel,
  });
  EmployeeController employeeController = EmployeeController();
  // final EmployeeModel employeeModel;

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
              height: MediaQuery.of(context).size.height * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                    width: 1, color: const Color.fromARGB(255, 160, 160, 160)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DisplayProfileHeader(
                      userName: companyModel.companyName,
                      jobCategory: '',
                      image: companyModel.image,
                      rank: '15',
                      rate: '3.5',
                      verified: true),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Company Informations',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const DisplayTextField(
                            labelText: 'Company Name',
                            text: 'Maga Cunstruction(pvt)',
                            icon: Icons.person_outline_rounded),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const DisplayTextField(
                            labelText: 'Company Registration Id',
                            text: 'c-12345',
                            icon: Icons.account_box_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const DisplayTextField(
                            labelText: 'Address',
                            text:
                                ' No:103/19,Sonflower Garden,Kahathuduwa,Polgasowita,Colombo',
                            icon: Icons.location_on_outlined),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const DisplayTextField(
                            labelText: 'email',
                            text: 'kavindukaveesha16"gmail.com',
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
                            labelText: 'Cunstruction Company Type',
                            text: 'Heavy Civil Construction:',
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
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
