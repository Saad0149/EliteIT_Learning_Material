import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/dashboard/dashboardviews/sellewaste/controllers/sellewaste_controller.dart';
import 'package:rental_dispose_app/app/modules/dashboard/views/dashboard_view.dart';

class SellEwasteScreen extends GetView<SellewasteController> {
  const SellEwasteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sell E-Waste',
          style: GoogleFonts.poppins(
            color: AppColor.primary,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
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
              onPressed: () => Get.offAll(const DashboardView()),
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColor.boxFillColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.primary),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter the Product Details',
                    style: GoogleFonts.poppins(
                        color: AppColor.textFont,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: AppColor.boxFillColor, width: 1.5)),
                      labelText: 'Category',
                      labelStyle: GoogleFonts.poppins(
                          color: AppColor.textFont, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: AppColor.boxFillColor, width: 1.5)),
                      labelText: 'Brand',
                      labelStyle: GoogleFonts.poppins(
                          color: AppColor.textFont, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: AppColor.boxFillColor, width: 1.5)),
                      labelText: 'Model',
                      labelStyle: GoogleFonts.poppins(
                          color: AppColor.textFont, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: AppColor.boxFillColor, width: 1.5)),
                      labelText: 'Years in Use',
                      labelStyle: GoogleFonts.poppins(
                          color: AppColor.textFont, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
