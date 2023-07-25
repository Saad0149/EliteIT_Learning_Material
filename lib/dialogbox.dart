import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'Error 404',
                      titleStyle: const TextStyle(fontSize: 25),
                      content: const Row(children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text('Data Loading'),
                        )
                      ]),
                      textCancel: 'Cancel',
                      textConfirm: 'Confirm',
                      onCancel: () {},
                      onConfirm: () {},
                      buttonColor: Colors.green);
                },
                child: const Text('Default Dialog'))
          ],
        ),
      ),
    );
  }
}
