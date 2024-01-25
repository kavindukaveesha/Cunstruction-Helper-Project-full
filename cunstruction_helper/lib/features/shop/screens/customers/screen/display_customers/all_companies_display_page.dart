import 'package:cunstruction_helper/features/shop/screens/company/controller/get_all_companies.dart';
import 'package:cunstruction_helper/features/shop/screens/company/screen/display_companies/company_list_page.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/controller/get_all_customers.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/model/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/constants/colors.dart';

class AllCustomersPage extends StatefulWidget {
  AllCustomersPage({Key? key}) : super(key: key);
  CustomerController customerController = CustomerController();

  @override
  State<AllCustomersPage> createState() => _AllCustomersPageState();
}

class _AllCustomersPageState extends State<AllCustomersPage> {
  String selectedLocation = 'Colombo';
  String selectedCategory = 'Electric';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30.0,
        backgroundColor: TColors.appPrimaryColor,
        title: Text(
          'All Customers',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  dropdownColor: const Color.fromARGB(255, 253, 249, 249),
                  padding: const EdgeInsets.all(10),
                  value: selectedLocation,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLocation = newValue!;
                    });
                  },
                  items: <String>[
                    'Colombo',
                    'Gampaha',
                    'Kandy',
                    'Anuradapura',
                  ]
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                  hint: const Text('Location'),
                ),
                DropdownButton<String>(
                  dropdownColor: const Color.fromARGB(255, 253, 249, 249),
                  padding: const EdgeInsets.all(10),
                  value: selectedCategory,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCategory = newValue!;
                    });
                  },
                  items: <String>['Electric', 'Garden', 'Plumbing']
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                  hint: const Text('Category'),
                ),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // Add your filter logic here
                  },
                ),
              ],
            ),
            FutureBuilder<List<CustomerModel>>(
                future: widget.customerController.fetchCustomers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // Return a loading indicator or placeholder widget
                    return const Text('');
                  } else if (snapshot.hasError) {
                    // Handle errors
                    return Text('Error: ${snapshot.error}');
                  } else {
                    // Display your GridView using the fetched data
                    List<CustomerModel> companies = snapshot.data!;
                    return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          const Text('All'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('${companies.length}')
                        ],
                      ),
                    );
                  }
                }),
            const SizedBox(height: 8.0),
            Expanded(
              child: CompanyList(),
            ),
          ],
        ),
      ),
    );
  }
}
