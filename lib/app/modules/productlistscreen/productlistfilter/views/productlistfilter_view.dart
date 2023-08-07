import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';

import '../controllers/productlistfilter_controller.dart';

class ProductlistfilterView extends GetView<ProductlistfilterController> {
  ProductlistfilterView({Key? key}) : super(key: key);
  final ProductlistfilterController ctrl =
      Get.put(ProductlistfilterController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Filter',
            style: GoogleFonts.poppins(
                color: AppColor.textFont,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Category Type',
            style: GoogleFonts.poppins(
                color: AppColor.textFont,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            //Always Wrap a Gridview.builder with a Expanded when it's inside a Column
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 50),
                itemCount: ctrl.category.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: AppColor.boxFillColor, width: 2.5)),
                    child: Center(
                      child: Text(
                        ctrl.category[index]['name'],
                        style: GoogleFonts.poppins(
                            color: AppColor.primary, fontSize: 14),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Sub Category',
            style: GoogleFonts.poppins(
                color: AppColor.textFont,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            //Always Wrap a Gridview.builder with a Expanded when it's inside a Column
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 50),
                itemCount: ctrl.subCategory.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: AppColor.boxFillColor, width: 2.5)),
                    child: Center(
                      child: Text(
                        ctrl.subCategory[index]['name'],
                        style: GoogleFonts.poppins(
                            color: AppColor.primary, fontSize: 10),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Sort By',
            style: GoogleFonts.poppins(
                color: AppColor.textFont,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            //Always Wrap a Gridview.builder with a Expanded when it's inside a Column
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 50),
                itemCount: ctrl.sort.length,
                itemBuilder: (ctx, index) {
                  final text = ctrl.sort[index]['name'];

                  final textPainter = TextPainter(
                    text: TextSpan(
                        text: text,
                        style: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 12)),
                    textDirection: TextDirection.ltr,
                  );
                  textPainter.layout();

                  final containerWidth = textPainter.width + 16.0;
                  return Container(
                    width: containerWidth,
                    decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: AppColor.boxFillColor, width: 2.5)),
                    child: Center(
                      child: Text(
                        ctrl.sort[index]['name'],
                        style: GoogleFonts.poppins(
                            color: AppColor.primary, fontSize: 10),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
