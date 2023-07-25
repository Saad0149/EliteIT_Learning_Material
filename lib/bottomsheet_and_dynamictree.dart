import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetN extends StatelessWidget {
  const BottomSheetN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog Box')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.wb_sunny_rounded),
                        title: const Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_twilight),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
              child: const Text('Dialog Box'),
            )
          ],
        ),
      ),
    );
  }
}
