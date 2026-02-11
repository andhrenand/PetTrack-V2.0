import 'package:get/get.dart';

import '../controllers/pet_care_controller.dart';

class PetCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetCareController>(
      () => PetCareController(),
    );
  }
}
