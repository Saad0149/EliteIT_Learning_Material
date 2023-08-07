import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/dashboard/dashboardviews/deals/views/deals_view.dart';
import '../../popularcategory/views/popularcategory_view.dart';
import '../../sellewaste/views/sellewaste_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                style:
                    GoogleFonts.poppins(color: AppColor.subtitle, fontSize: 12),
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
                style:
                    GoogleFonts.poppins(color: AppColor.subtitle, fontSize: 12),
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
                style:
                    GoogleFonts.poppins(color: AppColor.subtitle, fontSize: 12),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: DealsView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
