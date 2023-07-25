import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/obx.dart';
import 'package:getx_tutorial/service.dart';
import 'package:getx_tutorial/service_widget.dart';

Future<void> main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  print('Starting Services');
  await Get.putAsync<Service>(() async => await Service());
  print('All services Started');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ServicesGetX(),
    );
  }
}

class SnackBar extends StatelessWidget {
  const SnackBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'SnackBar Title',
                  'Snack Bar Message',
                  // titleText: const Text('Altenate Text'),
                  // messageText: const Text('Alternate Message'),
                  colorText: Colors.red.shade500,
                  snackPosition: SnackPosition.TOP,
                  backgroundColor: Colors.black,
                  borderRadius: 10,
                  margin: const EdgeInsets.all(10),
                  animationDuration: const Duration(milliseconds: 10),
                );
              },
              child: const Text('Show Snack Bar'),
            ),
          ],
        ),
      ),
    );
  }
}
