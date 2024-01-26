// category_row_controller.dart
import 'dart:convert';

import 'package:cunstruction_helper/features/shop/screens/Employee/model/EmployeeModel.dart';
import 'package:cunstruction_helper/features/shop/screens/home/widgets/slider/model/slidder_model.dart';

import 'package:http/http.dart' as http;

class SlidderController {
  Future<List<SlidderModel>> fetchSliderImages() async {
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> results =
          List<Map<String, dynamic>>.from(
              json.decode(response.body)['results']);

      return results.map((result) {
        return SlidderModel(image: result['picture']['large']);
      }).toList();
    } else {
      throw Exception('Failed to load Images');
    }
  }
}
