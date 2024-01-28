import 'package:cunstruction_helper/common/widgets/employee_profile_card/employee_profile_card.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/controller/get_all_employees.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';
import 'package:cunstruction_helper/features/shop/screens/Employee/screen/display_profile/employee_profile_display_page.dart';
import 'package:cunstruction_helper/features/shop/screens/company/controller/get_all_companies.dart';
import 'package:cunstruction_helper/features/shop/screens/company/model/company_model.dart';
import 'package:cunstruction_helper/features/shop/screens/company/screen/display_profile/company_profile_display_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/widgets/Company_profile_card/company_profile_card.dart';

class CompanyList extends StatelessWidget {
  final CompanyController companyController = CompanyController();
  CompanyList({Key? key}) : super(key: key);

  List<Map<String, dynamic>> cunstructionTypes = [
    {'cusntructionType': 'Heavy Civil Construction'},
    {'cusntructionType': 'Infrastructure Construction'},
    {'cusntructionType': 'Industrial Construction'},
    {'cusntructionType': 'Residential Construction'},
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CompanyModel>>(
      future: companyController.fetchCompanies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Return a loading indicator or placeholder widget
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // Handle errors
          return Text('Error: ${snapshot.error}');
        } else {
          // Display your GridView using the fetched data
          List<CompanyModel> companies = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Assuming you have a list of categories with employee lists
                for (var types in cunstructionTypes)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Text(
                              types['cusntructionType'],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Text('(${6})')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.46,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: companies.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            var company = companies[index];

                            return CompanyProfileCard(
                                companyName: company.companyName,
                                rank: '23',
                                image: company.image,
                                rate: '4.0',
                                isverified: 'verified',
                                cunstructionType: 'cunstructionType',
                                experience: '2years',
                                onHirePressed: () {
                                  Get.to(() => CompanyProfileDisplayPAge(
                                      companyModel: company));
                                });
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
