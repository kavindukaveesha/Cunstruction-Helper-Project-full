// category_row_controller.dart
import 'dart:convert';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/Project_selling_advertistment/model/project_selling_model.dart';

import 'package:http/http.dart' as http;

class ProjectSellingController {
  var description =
      'ඉදිකිරීම් ව්‍යාපෘතියට නවීන වාස්තු විද්‍යාත්මක සැලසුම් සහ උසස් ශිල්පීය හැකියාවන් ඇතුළත් නව නේවාසික නිවසක් සංවර්ධනය කිරීම ඇතුළත් වේ. මෙම ව්‍යාපෘතියේ ඉඩකඩ සහිත පිරිසැලසුමක්, බලශක්ති කාර්යක්ෂම පද්ධති සහ කල් පවතින කල්පැවැත්ම සඳහා උසස් තත්ත්වයේ ද්‍රව්‍ය ඇතුළත් වේ. ඉදිකිරීම් සැලැස්ම තිරසාරත්වයට සහ සෞන්දර්යාත්මක ආකර්ෂණයට ප්‍රමුඛත්වය දෙන අතර සුවපහසු සහ පාරිසරික සවිඥානකත්වයක් සහතික කරයි.';
  Future<List<ProjectSellingModel>> fetchProjects() async {
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> results =
          List<Map<String, dynamic>>.from(
              json.decode(response.body)['results']);

      return results.map((result) {
        return ProjectSellingModel(
            firstName: result['name']['first'],
            lastName: result['name']['last'],
            isVerified: 'verified',
            imageAvatar: result['picture']['thumbnail'],
            postedDate: result['registered']['date'],
            projectTitle: 'projectTitle',
            category: 'category',
            location: 'location',
            numberOfGigs: '15',
            description: description,
             postedUserRate: '4.5');
      }).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
