import 'package:cunstruction_helper/common/widgets/display_card/display_card.dart';
import 'package:cunstruction_helper/features/shop/screens/company/controller/get_all_companies.dart';
import 'package:cunstruction_helper/features/shop/screens/company/model/company_model.dart';

import 'package:flutter/material.dart';

class CompanyList extends StatelessWidget {
  final CompanyController companyController = CompanyController();
  CompanyList({super.key});

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

          return ListView.builder(
            shrinkWrap: true,
            itemCount: companies.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  
                  DisplayCard(
                    name: companies[index].companyName,
                    image: companies[index].image,
                    rate: 'rate',
                    rank: 'rank',
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }
}
