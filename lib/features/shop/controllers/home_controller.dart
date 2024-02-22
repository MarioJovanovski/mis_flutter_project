import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carousalCurrentiIndex = 0.obs;

  void updateOageIndicator(index) {
    carousalCurrentiIndex.value = index;
  }
}
