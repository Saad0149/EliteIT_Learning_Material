import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/service.dart';

class ServicesGetX extends StatelessWidget {
  const ServicesGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx services'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
                child: const Text('Increment Counter'))
          ],
        ),
      ),
    );
  }
}
