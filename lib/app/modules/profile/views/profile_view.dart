import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';
import 'package:rental_dispose_app/app/modules/profile/profileViews/addressbook/views/addressbook_view.dart';
import '../../../data/appcolor.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  final ProfileController ctrl = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jesus Arul',
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
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.boxFillColor,
              border: Border.all(color: AppColor.boxFillColor, width: 2),
            ),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Center(
                child: Text(
                  'JA',
                  style: GoogleFonts.poppins(
                      color: AppColor.primary, fontSize: 21),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 2.5, color: AppColor.boxFillColor)),
              child: ListTile(
                onTap: () {
                  switch (index) {
                    case 0:
                      break;
                    case 1:
                      break;
                    case 2:
                      break;
                    case 3:
                      Get.offAll(() => AddressbookView());
                      break;
                    case 8:
                      Get.offAll(() => LoginView());
                      break;
                  }
                },
                leading: Icon(
                  ctrl.profile[index]['icon'],
                  size: 30,
                  color: AppColor.primary,
                ),
                title: Text(
                  ctrl.profile[index]['desc'],
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont, fontSize: 15),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 20,
                ),
              ),
            ),
          );
        },
        itemCount: ctrl.profile.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
