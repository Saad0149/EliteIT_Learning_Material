import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
//import 'package:rental_dispose_app/app/modules/address/views/address_view.dart';
import 'package:rental_dispose_app/app/modules/location/views/location_view.dart';
import '../controllers/otp_controller.dart';

class OtpScreen extends StatelessWidget {
  final OtpController _otpController = Get.put(OtpController());

  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 4; i++)
                SizedBox(
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.boxFillColor),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      obscureText: true,
                      onChanged: (value) {
                        _otpController.updateOtpValue(i, value);
                        if (value.isNotEmpty && i < 3) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 50),
          Column(
            children: [
              InkWell(
                onTap: () => Get.offAll(LocationView()),
                child: Container(
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(
                    child: Text(
                      'Verify',
                      style: GoogleFonts.poppins(
                        color: AppColor.backgroundColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
