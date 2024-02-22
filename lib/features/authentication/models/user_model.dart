import 'package:flutter/material.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
  });

  static UserModel empty() =>
      UserModel(id: '', firstName: '', lastName: '', email: '', username: '');

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
    };
  }
}
