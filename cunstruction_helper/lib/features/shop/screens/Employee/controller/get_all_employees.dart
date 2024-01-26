// category_row_controller.dart
import 'dart:convert';

import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';

import 'package:http/http.dart' as http;

class EmployeeController {
  Future<List<EmployeeModel>> fetchEmployees() async {
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> results =
          List<Map<String, dynamic>>.from(
              json.decode(response.body)['results']);

      return results.map((result) {
        return EmployeeModel(
            firstName: result['name']['first'],
            lastName: result['name']['last'],
            image: result['picture']['large'],
            rate: '4.5',
            rank: '1',
            verified: 'Verified',
            jobTitle: 'Software Enginner',
            category: '',
            location: '',
            experience: '2 years',
            salaryLow: '25000',
            salaryHeigh: '50000');
      }).toList();
    } else {
      throw Exception('Failed to load Employees');
    }
  }
}
