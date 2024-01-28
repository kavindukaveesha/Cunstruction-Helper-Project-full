// Import necessary packages and files
import 'package:cunstruction_helper/features/shop/screens/category/controller/getAllCategories.dart';
import 'package:cunstruction_helper/features/shop/screens/company/model/company_model.dart';
import 'package:cunstruction_helper/features/shop/screens/company/screen/display_profile/company_profile_display_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../../common/widgets/categories_image_text/vertical_image_text_home.dart';

import '../../../searching_result/searching_result_model_page.dart';
import '../../controller/get_all_companies.dart';

// Create a StatelessWidget named CategoryRow
class CompaniesRow extends StatelessWidget {
  // Instantiate a CategoryController for fetching categories
  final CompanyController companyController = CompanyController();

  // Constructor for the CategoryRow widget
  CompaniesRow({super.key});

  // Build method for constructing the widget
  @override
  Widget build(BuildContext context) {
    // Use FutureBuilder to asynchronously fetch a list of CategoryModel
    return FutureBuilder<List<CompanyModel>>(
      future: companyController
          .fetchCompanies(), // Fetch categories using the CategoryController
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
          final List<CompanyModel> companies = snapshot.data!;

          // Return a horizontal ListView of TVerticalImageTextCategories
          return SizedBox(
            width: double.infinity,
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: companies.length,
              itemBuilder: (_, index) {
                var company = companies[index];
                return TVerticalImageTextCategories(
                  image: company.image,
                  title: '${company.companyName} ${company.companyName}',
                  onTap: () {
                    // goto  according category Details display page.
                    Get.to(
                        () => CompanyProfileDisplayPAge(companyModel: company));
                  }, // Specify the onTap callback (currently empty)
                );
              },
            ),
          );
        }
      },
    );
  }
}
