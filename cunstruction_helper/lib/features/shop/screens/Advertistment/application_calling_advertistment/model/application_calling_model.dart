class ApplicationCallingModel {
  final String firstName;
  final String lastName;
  final String isVerified;
  final String imageAvatar;
  final String postedDate;
  final String postedUserRate;
  final String jobTitle;
  final String jobCategory;
  final String location;
  final String salaryLow;
  final String salaryHeigh;
  final String experience;
  final String numberOfGigs;
  final String description;

  ApplicationCallingModel(
      {required this.firstName,
      required this.lastName,
      required this.isVerified,
      required this.imageAvatar,
      required this.postedDate,
      required this.postedUserRate,
      required this.jobTitle,
      required this.jobCategory,
      required this.location,
      required this.salaryLow,
      required this.salaryHeigh,
      required this.experience,
      required this.numberOfGigs,
      required this.description});
}
