import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';
import 'package:rental_dispose_app/app/modules/otp/views/otp_fields.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  OtpView({Key? key}) : super(key: key);
  final String phoneNumber = Get.arguments as String;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        leading: ElevatedButton(
          onPressed: () => Get.offAll(LoginView()),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor:
                MaterialStateProperty.all(AppColor.backgroundColor),
          ),
          child: const Icon(Icons.arrow_back, color: AppColor.textFont),
        ),
        elevation: 0.0,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Enter the code to verify your Phone Number',
                style: GoogleFonts.poppins(
                    color: AppColor.textFont,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'A code was sent to $phoneNumber',
                    style: GoogleFonts.poppins(
                        color: AppColor.textFont, fontSize: 15),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.offAll(LoginView()),
                  child: Text(
                    'Change',
                    style: GoogleFonts.poppins(
                        color: AppColor.primary, fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            OtpScreen(),
          ],
        ),
      ),
    );
  }
}
