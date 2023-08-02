import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "EcoRent",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.START,
      getPages: AppPages.routes,
    ),
  );
}
