import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:navigation_drawer/common/navigation_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerND(),
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
    );
  }
}
