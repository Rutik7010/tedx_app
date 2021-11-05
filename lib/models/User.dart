class User {
  final String name;
  final String email;
  final int phoneNo;
  final String? profilePicLink;

  User(
      {required this.name,
      required this.email,
      required this.phoneNo,
      this.profilePicLink});
}
