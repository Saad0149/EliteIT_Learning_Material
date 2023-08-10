import 'package:get/get.dart';

import '../controllers/addressbook_controller.dart';

class AddressbookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddressbookController>(
      () => AddressbookController(),
    );
  }
}
