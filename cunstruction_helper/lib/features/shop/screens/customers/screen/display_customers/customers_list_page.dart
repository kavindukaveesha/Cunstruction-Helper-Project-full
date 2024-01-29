import 'package:cunstruction_helper/common/customer_profile_card/customer_profile_card.dart';
import 'package:cunstruction_helper/features/shop/screens/company/controller/get_all_companies.dart';
import 'package:cunstruction_helper/features/shop/screens/company/model/company_model.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/controller/get_all_customers.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/model/customer_model.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/screen/display_profile/customer_profile_display_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerList extends StatelessWidget {
  final CustomerController customerController = CustomerController();
  CustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CustomerModel>>(
      future: customerController.fetchCustomers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Return a loading indicator or placeholder widget
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // Handle errors
          return Text('Error: ${snapshot.error}');
        } else {
          // Display your GridView using the fetched data
          List<CustomerModel> customers = snapshot.data!;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: customers.length,
            itemBuilder: (context, index) {
              var customer = customers[index];
              return Column(
                children: [
                  CustomerProfileCard(
                      customerName: customer.customerName,
                      image: customer.image,
                      isverified: 'verified',
                      onHirePressed: () {
                        Get.to(() => CustomerProfileDisplayPAge(
                            customerModel: customer));
                      })
                ],
              );
            },
          );
        }
      },
    );
  }
}
