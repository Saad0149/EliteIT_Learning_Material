import 'package:get/get.dart';

import '../controllers/sellewaste_controller.dart';

class SellewasteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellewasteController>(
      () => SellewasteController(),
    );
  }
}
