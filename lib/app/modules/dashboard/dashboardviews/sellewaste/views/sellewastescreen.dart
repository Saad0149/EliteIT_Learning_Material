import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/dashboard/dashboardviews/sellewaste/controllers/sellewaste_controller.dart';
import 'package:rental_dispose_app/app/modules/dashboard/views/dashboard_view.dart';

class SellEwasteScreen extends GetView<SellewasteController> {
  SellEwasteScreen({super.key});
  final SellewasteController ctrl = Get.put(SellewasteController());
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
                    keyboardType: TextInputType.text,
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
                    keyboardType: TextInputType.text,
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
                    keyboardType: TextInputType.text,
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
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Condition',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: AppColor.subtitle, width: 1.5)),
                              child: Text(
                                'Not Working',
                                style: GoogleFonts.poppins(
                                    color: AppColor.textFont, fontSize: 13),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: AppColor.subtitle, width: 1.5)),
                              child: Text(
                                'Working',
                                style: GoogleFonts.poppins(
                                    color: AppColor.textFont, fontSize: 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Upload the Photo of E-Waste',
                      labelStyle: GoogleFonts.poppins(
                          color: AppColor.subtitle, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => ctrl.selectImagePath.value == ''
                              ? Text(
                                  'A Photo will help us assess the value of your e-waste. Please upload one to complete your request',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: GoogleFonts.poppins(
                                      color: AppColor.textFont, fontSize: 13),
                                )
                              : Image.file(File(ctrl.selectImagePath.value)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                ctrl.getImage(ImageSource.camera);
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: DottedBorder(
                                  color: AppColor.boxFillColor,
                                  strokeWidth: 2,
                                  dashPattern: const [10, 6],
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.camera_alt_outlined,
                                        size: 80,
                                      ),
                                      Text(
                                        'Capture',
                                        style: GoogleFonts.poppins(
                                            color: AppColor.subtitle,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Text(
                                'or',
                                style: GoogleFonts.poppins(
                                    color: AppColor.subtitle, fontSize: 12),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // children: [

                                // ],);
                                ctrl.getImage(ImageSource.gallery);
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: DottedBorder(
                                  color: AppColor.boxFillColor,
                                  strokeWidth: 2,
                                  dashPattern: const [10, 6],
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.drive_folder_upload_outlined,
                                        size: 80,
                                      ),
                                      Text(
                                        'Upload',
                                        style: GoogleFonts.poppins(
                                            color: AppColor.subtitle,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Center(
                        child: Text(
                          'Submit to get an Instant Estimation',
                          style: GoogleFonts.poppins(
                            color: AppColor.backgroundColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
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
