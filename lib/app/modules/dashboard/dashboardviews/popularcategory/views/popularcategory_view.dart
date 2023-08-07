import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/productlistscreen/views/productlistscreen_view.dart';
import '../controllers/popularcategory_controller.dart';

class PopularcategoryView extends GetView<PopularcategoryController> {
  PopularcategoryView({Key? key}) : super(key: key);
  final PopularcategoryController ctrl = Get.put(PopularcategoryController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.offAll(const ProductlistscreenView()),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 80),
        itemCount: ctrl.popularCategory.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              border: Border.all(color: AppColor.primary),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  ctrl.popularCategory[index]['icon'],
                  color: AppColor.primary,
                  size: 40,
                ),
                Text(
                  ctrl.popularCategory[index]['name'],
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont, fontSize: 17),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
