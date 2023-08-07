import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/dashboard/dashboardviews/home/views/home_view.dart';
import 'package:rental_dispose_app/app/modules/profile/views/profile_view.dart';
import 'package:rental_dispose_app/app/modules/subscription/views/subscription_view.dart';
import 'package:rental_dispose_app/app/modules/wishlist/views/wishlist_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (_) {
        return WillPopScope(
          onWillPop: () async {
            if (_.navigationQueue.isEmpty) {}
            _.navigationQueue.removeLast();
            int position =
                _.navigationQueue.isEmpty ? 0 : _.navigationQueue.last;
            _.currentindex = position;
            _.update();
            return false;
          },
          child: Scaffold(
            key: _.scaffoldKey,
            appBar: _.currentindex == 0
                ? AppBar(
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
                            style: GoogleFonts.poppins(
                                color: AppColor.primary, fontSize: 17),
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
                  )
                : null,
            backgroundColor: AppColor.boxFillColor,
            body: Container(
              height: Get.height,
              width: Get.width,
              decoration: const BoxDecoration(color: AppColor.boxFillColor),
              child: SafeArea(
                child: getBody(_),
              ),
            ),
            bottomNavigationBar: bottomnavbar(_),
          ),
        );
      },
    );
  }

  Widget getBody(DashboardController _) {
    List<Widget> pages = [
      const HomeView(),
      const WishlistView(),
      const SubscriptionView(),
      const ProfileView(),
    ];
    return IndexedStack(
      index: _.currentindex,
      children: pages,
    );
  }

  Widget bottomnavbar(DashboardController _) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const FaIcon(
            FontAwesomeIcons.house,
            size: 25,
          ).marginOnly(bottom: 10),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(
            FontAwesomeIcons.heart,
            size: 25,
          ).marginOnly(bottom: 10),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(
            FontAwesomeIcons.crown,
            size: 25,
          ).marginOnly(bottom: 10),
          label: 'Subscription',
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(
            FontAwesomeIcons.user,
            size: 25,
          ).marginOnly(bottom: 10),
          label: 'Profile',
        ),
      ],
      currentIndex: _.currentindex,
      selectedItemColor: AppColor.primary,
      selectedFontSize: 12.0,
      backgroundColor: AppColor.backgroundColor,
      unselectedItemColor: AppColor.subtitle,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppColor.primary,
      ),
      onTap: _.changeTabIndex,
    );
  }
}
