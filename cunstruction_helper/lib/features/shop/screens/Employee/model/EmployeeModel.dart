import 'dart:ffi';

class EmployeeModel {
  final String firstName;
  final String lastName;
  final String image;
  final String rate;
  final String rank;
  final String verified;
  final String jobTitle;
  final String category;
  final String location;
  final String experience;
  final String salaryLow;
  final String salaryHeigh;

  EmployeeModel(
      {required this.firstName,
      required this.lastName,
      required this.image,
      required this.rate,
      required this.rank,
      required this.verified,
      required this.jobTitle,
      required this.category,
      required this.location,
      required this.experience,
      required this.salaryLow,
      required this.salaryHeigh});
}
