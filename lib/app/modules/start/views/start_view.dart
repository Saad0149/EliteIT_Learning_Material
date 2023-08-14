import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';
//import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';
//import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';
import 'package:rental_dispose_app/app/modules/start/controllers/start_controller.dart';
//import 'package:rental_dispose_app/app/routes/app_pages.dart';

class StartView extends StatelessWidget {
  final StartController _pageController = Get.put(StartController());

  StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EcoRent',
          style: GoogleFonts.poppins(
              color: AppColor.primary,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
      ),
      backgroundColor: AppColor.boxFillColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: PageController(),
                onPageChanged: _pageController.onPageChanged,
                children: _pageController.pages,
              ),
            ),
            const SizedBox(height: 16),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    _pageController.imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _pageController.goToPage(entry.key),
                    child: Container(
                      width: _pageController.currentPageIndex.value == entry.key
                          ? 35
                          : 5,
                      height: 3.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            _pageController.currentPageIndex.value == entry.key
                                ? AppColor.primary
                                : AppColor.subtitle,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Get.offAll(LoginView()),
                    child: Text(
                      'Skip',
                      style: GoogleFonts.poppins(
                          color: AppColor.textFont,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _pageController.navigateToNextPageOrFinish,
                    child: Obx(
                      () => Text(
                        _pageController.currentPageIndex.value <
                                _pageController.pages.length - 1
                            ? 'Next'
                            : 'Finish',
                        style: GoogleFonts.poppins(
                            color: AppColor.backgroundColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
