import 'package:cunstruction_helper/features/shop/screens/company/model/company_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/categories_image_text/vertical_image_text_home.dart';
import '../../controller/get_all_customers.dart';
import '../../model/customer_model.dart';

// Create a StatelessWidget named CategoryRow
class CustomersRow extends StatelessWidget {
  // Instantiate a CategoryController for fetching categories
  final CustomerController customerController = CustomerController();

  // Constructor for the CategoryRow widget
  CustomersRow({super.key});

  // Build method for constructing the widget
  @override
  Widget build(BuildContext context) {
    // Use FutureBuilder to asynchronously fetch a list of CategoryModel
    return FutureBuilder<List<CustomerModel>>(
      future: customerController
          .fetchCustomers(), // Fetch categories using the CategoryController
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
          final List<CustomerModel> customers = snapshot.data!;

          // Return a horizontal ListView of TVerticalImageTextCategories
          return SizedBox(
            width: double.infinity,
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: customers.length,
              itemBuilder: (_, index) {
                // Display each category using the TVerticalImageTextCategories widget
                return TVerticalImageTextCategories(
                  image: customers[index].image,
                  title:
                      '${customers[index].customerName} ${customers[index].customerName}',
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
