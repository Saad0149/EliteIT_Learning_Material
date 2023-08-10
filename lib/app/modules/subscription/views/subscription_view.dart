import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../controllers/subscription_controller.dart';

class SubscriptionView extends GetView<SubscriptionController> {
  const SubscriptionView({Key? key}) : super(key: key);
  // final SubscriptionController ctrl = Get.put(SubscriptionController());
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
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     TabBar(
      //       tabs: const [
      //         Tab(
      //           text: 'Currenlty Owning',
      //         ),
      //         Tab(
      //           text: 'Past Plan',
      //         ),
      //       ],
      //       onTap: ctrl.selectedTabIndex,
      //       controller: ctrl.tabController,
      //     ),
      //     Expanded(
      //         child: Obx(() => TabBarView(
      //               controller: ctrl.tabController,
      //               children: [
      //                 // ListView.builder(itemBuilder: (ctx, index) {
      //                 //   return null;
      //                 // }),
      //                 SizedBox(
      //                   child: Text(
      //                     'Tv Owned',
      //                     style: GoogleFonts.poppins(
      //                         color: AppColor.textFont, fontSize: 17),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   child: Text(
      //                     'Nothing Owned',
      //                     style: GoogleFonts.poppins(
      //                         color: AppColor.textFont, fontSize: 17),
      //                   ),
      //                 ),
      //               ],
      //             ))),
      //   ],
      // ),
    );
  }
}
