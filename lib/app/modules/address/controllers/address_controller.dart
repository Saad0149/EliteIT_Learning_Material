import 'package:get/get.dart';

class AddressController extends GetxController {
  final isSelected = false.obs;

  void toggleSelection() {
    isSelected.value = !isSelected.value;
  }
}
