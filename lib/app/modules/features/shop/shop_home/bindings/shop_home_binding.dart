import 'package:get/get.dart';

import '../controllers/shop_home_controller.dart';

class ShopHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopHomeController>(
      () => ShopHomeController(),
    );
  }
}
