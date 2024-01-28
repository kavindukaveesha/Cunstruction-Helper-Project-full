import 'package:flutter/material.dart';
import 'package:cunstruction_helper/common/widgets/Company_profile_card/company_profile_card.dart';
import 'package:cunstruction_helper/features/shop/screens/company/controller/get_all_companies.dart';
import 'package:cunstruction_helper/features/shop/screens/company/model/company_model.dart';

class VerCompanyList extends StatelessWidget {
  final CompanyController companyController = CompanyController();
  VerCompanyList({Key? key});

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
          // Display your ListView using the fetched data
          List<CompanyModel> companies = snapshot.data!;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: companies.length,
            itemBuilder: (context, index) {
              CompanyModel company = companies[index];
              return Column(
                children: [
                  CompanyProfileCard(
                    companyName: company.companyName,
                    rank:
                        'rank', // You may need to replace this with the actual rank property from your CompanyModel
                    image:
                        company.image, // Use the correct property for the image
                    rate: 'rate',

                    experience:
                        '2 years', // You may need to replace this with the actual experience property from your CompanyModel
                    onHirePressed: () {}, isverified: 'Verified',
                    cunstructionType: 'Residential Construction',
                  ),
                  const SizedBox(
                      height: 16), // Add some space between CompanyProfileCards
                ],
              );
            },
          );
        }
      },
    );
  }
}
