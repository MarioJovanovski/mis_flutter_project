import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dom2/data/repositories/authentication_repo.dart';
import 'package:flutter_dom2/data/repositories/user_repo.dart';
import 'package:flutter_dom2/features/authentication/models/user_model.dart';
import 'package:flutter_dom2/features/shop/screens/home/home.dart';
import 'package:flutter_dom2/navigation_menu.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  GlobalKey<FormState> signupFromKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      final userCredential = await AuthenticationRepoitory.instance
          .registerWithEmailAndPassword(email.text, password.text);

      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text,
          lastName: lastName.text,
          username: username.text,
          email: email.text);

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      Get.to(() => const NavigationMenu());
    } catch (e) {
      throw 'Oh snappppp!!!';
      //loader
    }
  }

  
}
