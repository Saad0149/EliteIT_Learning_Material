import 'package:get/get.dart';

import '../controllers/productlistfilter_controller.dart';

class ProductlistfilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductlistfilterController>(
      () => ProductlistfilterController(),
    );
  }
}
