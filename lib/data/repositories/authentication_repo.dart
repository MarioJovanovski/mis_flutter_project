import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dom2/features/shop/screens/login.dart';
import 'package:flutter_dom2/navigation_menu.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepoitory extends GetxController {
  static AuthenticationRepoitory get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  final deviceStorage = GetStorage();

  //register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw 'Something went wrong';
    }
  }

  // Future<UserCredential> signInWithEmailAndPassword(
  //     String email, String password) async {
  //   try {
  //     return await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //     throw 'Something went wrong';
  //   }
  // }
  Future<User?> signInWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        (message: 'Invalid email or password.');
      } else {
        (message: 'An error occurred: ${e.code}');
      }

    }
    return null;

  }




  void screenRedirect() async {
    final user = _auth.currentUser;

    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      }
    } else {
      deviceStorage.writeIfNull('IsFirsTime', true);

      if (deviceStorage.read('IsFirstTime') != true) {
        Get.offAll(() => const LoginScreen());
      }
    }
  }
}
