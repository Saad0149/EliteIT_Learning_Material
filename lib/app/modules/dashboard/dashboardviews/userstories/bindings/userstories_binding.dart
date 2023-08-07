import 'package:get/get.dart';

import '../controllers/userstories_controller.dart';

class UserstoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserstoriesController>(
      () => UserstoriesController(),
    );
  }
}
