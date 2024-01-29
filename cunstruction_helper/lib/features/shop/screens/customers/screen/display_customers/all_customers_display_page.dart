import 'package:cunstruction_helper/common/widgets/custom_shape/containers/search_container.dart';
import 'package:cunstruction_helper/common/widgets/filter_buttons/filter_buttons.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/controller/get_all_customers.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/model/customer_model.dart';
import 'package:cunstruction_helper/features/shop/screens/customers/screen/display_customers/customers_list_page.dart';
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
            Padding(
              padding: EdgeInsets.all(15.0),
              child: SearchBarContainer(resultPage: AllCustomersPage()),
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
                    List<CustomerModel> customers = snapshot.data!;
                    return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          const Text('All'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('${customers.length}')
                        ],
                      ),
                    );
                  }
                }),
            const SizedBox(height: 8.0),
            Expanded(
              child: CustomerList(),
            ),
          ],
        ),
      ),
    );
  }
}
