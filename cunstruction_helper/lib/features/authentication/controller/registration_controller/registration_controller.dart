import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../shop/screens/company/model/company_model.dart';

class RegistrationController extends GetxController {
  final RxInt selectedId = 0.obs;

  void setSelectedId(int id) {
    selectedId.value = id;
  }

  // Implement methods to send data to the backend
  // For example:
  Future<List<CompanyModel>> registerCompany() async {
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> results =
          List<Map<String, dynamic>>.from(
              json.decode(response.body)['results']);

      return results.map((result) {
        return CompanyModel(
          companyName: '${result['name']['first']} ${result['name']['last']}',
          description: result['name']['last'],
          image: result['picture']['thumbnail'],
        );
      }).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
  void registerEmployee(String employeeId) {
    // Send the employee registration data to the backend
  }

  void registerCustomer(String customerId) {
    // Send the customer registration data to the backend
  }
}
