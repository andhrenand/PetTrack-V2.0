import 'package:get/get.dart';

import '../controllers/medical_add_controller.dart';

class MedicalAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicalAddController>(
      () => MedicalAddController(),
    );
  }
}
