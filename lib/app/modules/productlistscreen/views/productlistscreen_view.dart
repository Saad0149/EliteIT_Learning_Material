import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/productlistscreen/productlistfilter/views/productlistfilter_view.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../controllers/productlistscreen_controller.dart';

class ProductlistscreenView extends GetView<ProductlistscreenController> {
  const ProductlistscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Appliances',
          style: GoogleFonts.poppins(color: AppColor.primary, fontSize: 17),
        ),
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        toolbarHeight: 60,
        leadingWidth: 85,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.boxFillColor,
              border: Border.all(color: AppColor.boxFillColor, width: 2),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.backgroundColor,
                elevation: 0.0,
              ),
              child: const Icon(
                Icons.arrow_back_outlined,
                color: AppColor.primary,
              ),
              onPressed: () => Get.offAll(() => const DashboardView()),
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.boxFillColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.backgroundColor,
                        border: const OutlineInputBorder(),
                        hintText: 'Search TV, Vacuum cleaner, etc.....',
                        hintStyle: GoogleFonts.poppins(
                            color: AppColor.subtitle, fontSize: 12),
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                          size: 30,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      ProductlistfilterView(),
                      enableDrag: true,
                      backgroundColor: AppColor.backgroundColor,
                      isScrollControlled: true,
                    );
                  },
                  child: Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.filter_list_outlined,
                      color: AppColor.backgroundColor,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
