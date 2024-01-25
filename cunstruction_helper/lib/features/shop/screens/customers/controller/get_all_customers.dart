// category_row_controller.dart
import 'dart:convert';

import 'package:cunstruction_helper/features/shop/screens/customers/model/customer_model.dart';
import 'package:http/http.dart' as http;

class CustomerController {
  Future<List<CustomerModel>> fetchCustomers() async {
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> results =
          List<Map<String, dynamic>>.from(
              json.decode(response.body)['results']);

      return results.map((result) {
        return CustomerModel(
          customerName: result['name']['first'],
          description: result['name']['last'],
          image: result['picture']['thumbnail'],
        );
      }).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
