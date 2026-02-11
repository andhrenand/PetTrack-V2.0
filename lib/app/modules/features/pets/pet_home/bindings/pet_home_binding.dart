import 'package:get/get.dart';

import '../controllers/pet_home_controller.dart';

class PetHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetHomeController>(
      () => PetHomeController(),
    );
  }
}
