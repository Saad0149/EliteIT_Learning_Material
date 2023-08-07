import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import '../controllers/deals_controller.dart';

class DealsView extends GetView<DealsController> {
  DealsView({Key? key}) : super(key: key);
  final DealsController ctrl = Get.put(DealsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: (ctx, ind) {
        return const SizedBox(
          width: 10,
        );
      },
      itemCount: ctrl.deals.length,
      itemBuilder: (c, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 110,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.backgroundColor,
            ),
            child: ListView(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: Image.asset(
                    ctrl.deals[i]['image'],
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    ctrl.deals[i]['name'],
                    style: GoogleFonts.poppins(
                        color: AppColor.textFont, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ctrl.deals[i]['discount'],
                        style: GoogleFonts.poppins(
                            color: AppColor.primary, fontSize: 14),
                      ),
                      Text(
                        ctrl.deals[i]['rentPerMonth'],
                        style: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
