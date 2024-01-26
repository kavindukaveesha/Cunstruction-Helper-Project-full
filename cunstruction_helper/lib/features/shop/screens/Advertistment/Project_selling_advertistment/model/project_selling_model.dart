class ProjectSellingModel {
  final String firstName;
  final String lastName;
  final String isVerified;
  final String imageAvatar;
  final String postedDate;
  final String postedUserRate;
  final String projectTitle;
  final String category;
  final String location;
  final String numberOfGigs;
  final String description;

  ProjectSellingModel(
      {required this.firstName,
      required this.lastName,
      required this.isVerified,
      required this.imageAvatar,
      required this.postedDate,
      required this.postedUserRate,
      required this.projectTitle,
      required this.category,
      required this.location,
      required this.numberOfGigs,
      required this.description});
}
