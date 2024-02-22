import 'package:flutter/material.dart';
import 'package:flutter_dom2/features/shop/screens/login.dart';
import 'package:flutter_dom2/navigation_menu.dart';
import 'package:flutter_dom2/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: LoginScreen(),
    );
  }
}
