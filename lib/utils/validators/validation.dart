import 'package:get/get.dart';

class TValidator {
  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username is requiered';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is requiered';
    }
    return null;
  }

   static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is requiered';
    }
    return null;
  }
}
