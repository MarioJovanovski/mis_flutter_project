import 'package:flutter/material.dart';
import 'package:flutter_dom2/data/repositories/authentication_repo.dart';
import 'package:flutter_dom2/navigation_menu.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  Future<void> emailAndPasswordSignIn() async {
    try {
      if (!loginFormKey.currentState!.validate()) {
        return;
      }

      final userCredentials = await AuthenticationRepoitory.instance
          .signInWithEmailAndPassword(email.text, password.text);
      if(userCredentials != null){
        Get.to(() => const NavigationMenu());
      } else {
        (message: "error123");
      }

      AuthenticationRepoitory.instance.screenRedirect();
    } catch (e) {
      return e.printError();
    }
  }
}
