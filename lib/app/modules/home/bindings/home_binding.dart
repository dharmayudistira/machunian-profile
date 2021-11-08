import 'package:get/get.dart';
import 'package:manutd_profile/app/controllers/player_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<PlayerController>(
      () => PlayerController(),
    );
  }
}
