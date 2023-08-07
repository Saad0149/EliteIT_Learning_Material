import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/userstories_controller.dart';

class UserstoriesView extends GetView<UserstoriesController> {
  const UserstoriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserstoriesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UserstoriesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
