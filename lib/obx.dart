import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OBXController extends StatelessWidget {
  OBXController({super.key});
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OBX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text('Count is $count'),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: const Text('In crement'))
          ],
        ),
      ),
    );
  }
}
