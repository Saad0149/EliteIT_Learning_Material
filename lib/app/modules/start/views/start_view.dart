import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        title: const Text('Sliding Pages'),
      ),
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
            // Slide bar to indicate the progress
            Obx(
              () => LinearProgressIndicator(
                value: (_pageController.currentPageIndex.value + 1) /
                    _pageController.pages.length,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Skip button
                TextButton(
                  onPressed: () => Get.offAll(LoginView()),
                  child: const Text('Skip'),
                ),
                // Next button
                ElevatedButton(
                  onPressed: _pageController.navigateToNextPageOrFinish,
                  child: Obx(
                    () => Text(
                      _pageController.currentPageIndex.value <
                              _pageController.pages.length - 1
                          ? 'Next'
                          : 'Finish',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
