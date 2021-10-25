import 'package:flutter/rendering.dart';

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

User kUser = User(
    name: "Harsh Kulkarni",
    email: "harsh.kulkarni.42774@gmail.com",
    phoneNo: 8888888888);
