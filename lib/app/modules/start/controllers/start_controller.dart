import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';
import '../views/page1.dart';
import '../views/page2.dart';
import '../views/page3.dart';

class StartController extends GetxController {
  var currentPageIndex = 0.obs;

  void navigateToNextPageOrFinish() {
    if (currentPageIndex.value < pages.length - 1) {
      nextPage();
    } else {
      Get.offAll(() => LoginView());
    }
  }

  void nextPage() {
    currentPageIndex.value++;
  }

  void previousPage() {
    currentPageIndex.value--;
  }

  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }

  // List of pages
  final List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];
}
