import 'package:get/get.dart';

import '../controllers/reviewewaste_controller.dart';

class ReviewewasteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReviewewasteController>(
      () => ReviewewasteController(),
    );
  }
}
