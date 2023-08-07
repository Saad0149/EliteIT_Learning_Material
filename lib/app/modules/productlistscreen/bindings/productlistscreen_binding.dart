import 'package:get/get.dart';

import '../controllers/productlistscreen_controller.dart';

class ProductlistscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductlistscreenController>(
      () => ProductlistscreenController(),
    );
  }
}
