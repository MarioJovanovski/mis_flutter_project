import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_dom2/data/repositories/authentication_repo.dart';
import 'package:flutter_dom2/firebase_options.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await GetStorage.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepoitory()));

  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();

  runApp(const App());
}
