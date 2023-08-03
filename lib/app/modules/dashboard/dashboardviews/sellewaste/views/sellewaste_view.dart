import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import '../controllers/sellewaste_controller.dart';

class SellewasteView extends GetView<SellewasteController> {
  const SellewasteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Sell All Damaged Electronic Products',
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
