import 'package:get/get.dart';

class PhoneInputController extends GetxController {
  RxString phoneNumber = ''.obs;

  void updatePhoneNumber(String number) {
    phoneNumber.value = number;
  }
}
