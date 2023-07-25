import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/ProductModule/controllers/product_controller.dart';
import 'package:getx_api/commommodule/appcolor.dart';
import 'package:getx_api/commommodule/appstring.dart';

class ProductListView extends StatelessWidget {
  ProductListView({super.key});
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppString.productList)),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              productController.productList[index].imageLink,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: AppColor.purpleColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productController.productList[index].name,
                                style: const TextStyle(fontSize: 25),
                              ),
                              Text(productController.productList[index].brand),
                              Text(productController.productList[index].price),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                );
              });
        }
      }),
    );
  }
}
