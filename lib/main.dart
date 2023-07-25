import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/ProductModule/view/product_view.dart';
import 'package:getx_api/commommodule/appcolor.dart';
import 'package:getx_api/commommodule/appstring.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.fetchApiData,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.purpleColor),
        useMaterial3: true,
      ),
      home: ProductListView(),
    );
  }
}
