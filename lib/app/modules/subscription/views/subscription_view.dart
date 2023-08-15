import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/subscription/views/currently_owning.dart';
import 'package:rental_dispose_app/app/modules/subscription/views/past_plan.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../controllers/subscription_controller.dart';

class SubscriptionView extends GetView<SubscriptionController> {
  SubscriptionView({Key? key}) : super(key: key);
  final SubscriptionController ctrl = Get.put(SubscriptionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subscriptions',
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
              onPressed: () => Get.offAll(() => const DashboardView()),
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Container(
            height: 10,
            width: double.infinity,
            color: AppColor.boxFillColor,
          ),
          TabBar(
            controller: ctrl.tabController,
            labelColor: AppColor.primary,
            unselectedLabelColor: AppColor.subtitle,
            labelStyle:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
            isScrollable: false,
            tabs: const [
              Tab(text: 'Currently Owning'),
              Tab(text: 'Past Plans'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: ctrl.tabController,
              children: [
                CurrenltyOwning(),
                PastPlan(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
