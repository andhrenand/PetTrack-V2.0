import 'package:get/get.dart';

import '../controllers/pet_add_controller.dart';

class PetAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetAddController>(
      () => PetAddController(),
    );
  }
}
