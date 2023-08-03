import 'package:get/get.dart';

class AddressController extends GetxController {
  RxInt selectedRadioIndex = RxInt(-1);
  final List<String> radioValues = ['Home', 'Hostel', 'Office', 'Others'];

  void onRadioSelected(int index) {
    selectedRadioIndex.value = index;
  }
}
