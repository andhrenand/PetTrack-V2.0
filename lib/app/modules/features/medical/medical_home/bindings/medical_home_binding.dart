import 'package:get/get.dart';

import '../controllers/medical_home_controller.dart';

class MedicalHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicalHomeController>(
      () => MedicalHomeController(),
    );
  }
}
