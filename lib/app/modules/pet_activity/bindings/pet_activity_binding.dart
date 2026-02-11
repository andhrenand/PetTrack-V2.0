import 'package:get/get.dart';

import '../controllers/pet_activity_controller.dart';

class PetActivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetActivityController>(
      () => PetActivityController(),
    );
  }
}
