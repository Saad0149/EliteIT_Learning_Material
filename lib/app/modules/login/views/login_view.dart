import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/address/views/address_view.dart';
//import 'package:rental_dispose_app/app/modules/location/views/location_view.dart';
import 'package:rental_dispose_app/app/modules/otp/views/otp_view.dart';
import '../controllers/input_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final PhoneInputController _phoneController = Get.put(PhoneInputController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Text(
            'EcoRent',
            style: GoogleFonts.poppins(
                color: AppColor.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        actions: [
          Container(
            height: 20,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ElevatedButton(
                onPressed: () => Get.offAll(AddressView()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.boxFillColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont, fontSize: 15),
                )),
          ),
        ],
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Welcome to EcoRent',
                  style: GoogleFonts.poppins(
                      color: AppColor.primary,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'Rent Electronics, Dispose E-waste',
                    style: GoogleFonts.poppins(
                        color: AppColor.textFont,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                    'and Enjoy Sustainable Living!',
                    style: GoogleFonts.poppins(
                        color: AppColor.textFont,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Login or Sign Up',
                    style: GoogleFonts.poppins(
                        color: AppColor.textFont,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'We will Send you the 4-Digit OTP on you Number',
                    style: GoogleFonts.poppins(
                        color: AppColor.textFont, fontSize: 14),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: IntlPhoneField(
                  keyboardType: TextInputType.phone,
                  onChanged: (phone) {
                    _phoneController.updatePhoneNumber(phone.completeNumber);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.subtitle)),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (_phoneController.phoneNumber.value.isEmpty) {
                    Get.snackbar(
                        'Empty Field', 'Please Enter Your Phone Number',
                        snackPosition: SnackPosition.BOTTOM);
                  } else {
                    Get.offAll(() => OtpView(),
                        arguments: _phoneController.phoneNumber.value);
                  }
                },
                child: Container(
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Center(
                    child: Text(
                      'Request OTP',
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
        ),
      ),
    );
  }
}
