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
            rate: '3.5',
            rank: '14',
            verified: true,
            jobTitle: 'jobTitle',
            category: 'category',
            location: 'location',
            experience: 'experience',
            salaryLow: '20000',
            salaryHeigh: '30000',
            description: 'description',
            age: '${result['dob']['age']}',
            address:
                'No:${result['location']['street']['number']},${result['location']['street']['name']},${result['location']['city']}',
            email: result['email'],
            mobileNumber: result['phone'],
            gender: result['gender']);
      }).toList();
    } else {
      throw Exception('Failed to load Employees');
    }
  }
}
