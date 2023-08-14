import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

class AdsController extends GetxController {
  final imageList = [
    {"id": 1, "image_path": 'assets/ac.jpg'},
    {"id": 2, "image_path": 'assets/led.png'},
    {"id": 3, "image_path": 'assets/fridge.jpg'}
  ];
  final currentIndex = 0.obs;
  final CarouselController carouselController = CarouselController();

  void onPageChanged(int index, CarouselPageChangedReason reason) {
    currentIndex.value = index;
  }

  void goToPage(int index) {
    carouselController.animateToPage(index);
  }
}
