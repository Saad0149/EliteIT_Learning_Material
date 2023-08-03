import 'package:get/get.dart';

import '../controllers/popularcategory_controller.dart';

class PopularcategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopularcategoryController>(
      () => PopularcategoryController(),
    );
  }
}
