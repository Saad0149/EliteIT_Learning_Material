import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';

import '../views/page1.dart';
import '../views/page2.dart';
import '../views/page3.dart';

class StartController extends GetxController {
  var currentPageIndex = 0.obs;
  final List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  final imageList = [
    {"id": 1, "image_path": 'assets/1.png'},
    {"id": 2, "image_path": 'assets/2.png'},
    {"id": 3, "image_path": 'assets/4.png'}
  ];

  void nextPage() {
    currentPageIndex.value++;
  }

  void previousPage() {
    currentPageIndex.value--;
  }

  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }

  void navigateToNextPageOrFinish() {
    if (currentPageIndex.value < pages.length - 1) {
      nextPage();
    } else {
      Get.offAll(() => LoginView());
    }
  }

  final CarouselController carouselController = CarouselController();
  void goToPage(int index) {
    carouselController.animateToPage(index);
  }
}
