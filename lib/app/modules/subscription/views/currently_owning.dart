import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/subscription/controllers/subscription_controller.dart';

class CurrenltyOwning extends GetView<SubscriptionController> {
  CurrenltyOwning({super.key});
  final SubscriptionController ctrl = Get.put(SubscriptionController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          itemCount: ctrl.currentlyOwned.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 120,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(ctrl.currentlyOwned[index]['image'],
                        fit: BoxFit.fill),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 170,
                    width: 240,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ctrl.currentlyOwned[index]['desc'],
                          maxLines: 3,
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.poppins(
                              color: AppColor.textFont,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ctrl.currentlyOwned[index]['startDate'],
                              style: GoogleFonts.poppins(
                                  color: AppColor.subtitle,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ctrl.currentlyOwned[index]['endDate'],
                              style: GoogleFonts.poppins(
                                  color: AppColor.subtitle,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ctrl.currentlyOwned[index]['timeleft'],
                              style: GoogleFonts.poppins(
                                  color: AppColor.textFont,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.primary),
                                  borderRadius: BorderRadius.circular(5)),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.backgroundColor,
                                    elevation: 0.0,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Check Details',
                                    style: GoogleFonts.poppins(
                                        color: AppColor.primary, fontSize: 14),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}