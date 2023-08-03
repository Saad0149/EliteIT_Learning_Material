import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/dashboard/dashboardviews/popularcategory/views/popularcategory_view.dart';
import 'package:rental_dispose_app/app/modules/dashboard/dashboardviews/sellewaste/views/sellewaste_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 150,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: AppColor.primary,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Chennai',
                style:
                    GoogleFonts.poppins(color: AppColor.primary, fontSize: 17),
              ),
            ],
          ),
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: AppColor.boxFillColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.backgroundColor,
              ),
              child: const Icon(
                Icons.search_rounded,
                color: AppColor.primary,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.backgroundColor,
              ),
              child: const Icon(
                Icons.notifications_none_outlined,
                color: AppColor.primary,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColor.boxFillColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Sell E-Waste',
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Get Money by Disposing your old Electronical Products',
                  style: GoogleFonts.poppins(
                      color: AppColor.subtitle, fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColor.backgroundColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.primary)),
                  child: const SellewasteView(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Popular Categories',
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'To Rent',
                  style: GoogleFonts.poppins(
                      color: AppColor.subtitle, fontSize: 12),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: AppColor.boxFillColor,
                  width: double.infinity,
                  child: PopularcategoryView(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Deals For You',
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'To Rent',
                  style: GoogleFonts.poppins(
                      color: AppColor.subtitle, fontSize: 12),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
