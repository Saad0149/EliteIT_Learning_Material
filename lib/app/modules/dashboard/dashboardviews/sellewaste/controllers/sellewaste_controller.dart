import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SellewasteController extends GetxController {
  var selectImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectImagePath.value = pickedFile.path;
      selectedImageSize.value =
          "${(((File(selectImagePath.value)).lengthSync() / 1024 / 1024)).toStringAsFixed(2)} Mb";
    } else {
      Get.snackbar('Error', 'No Image Picked');
    }
  }
}
