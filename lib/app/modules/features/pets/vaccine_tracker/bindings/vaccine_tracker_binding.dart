import 'package:get/get.dart';

import '../controllers/vaccine_tracker_controller.dart';

class VaccineTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VaccineTrackerController>(
      () => VaccineTrackerController(),
    );
  }
}
