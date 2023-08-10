import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/addressdata.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/address/controllers/address_controller.dart';
import 'package:rental_dispose_app/app/modules/dashboard/views/dashboard_view.dart';
import '../controllers/addressbook_controller.dart';

class AddressbookView extends GetView<AddressbookController> {
  AddressbookView({Key? key}) : super(key: key);
  final AddressController ctrl = Get.put(AddressController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Address Book',
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
              onPressed: () => Get.offAll(const DashboardView()),
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<AddressModel>>(
        future: ctrl.getSavedAddresses(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            final addressList = snapshot.data!;

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ListView.builder(
                itemCount: addressList.length,
                itemBuilder: (context, index) {
                  final addressModel = addressList[index];

                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(width: 2, color: AppColor.boxFillColor)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Address Details',
                          style: GoogleFonts.poppins(
                              color: AppColor.textFont,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          addressModel.name,
                          style: GoogleFonts.poppins(
                              color: AppColor.primary,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          addressModel.address,
                          style: GoogleFonts.poppins(
                              color: AppColor.textFont, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          addressModel.locality,
                          style: GoogleFonts.poppins(
                              color: AppColor.textFont, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              addressModel.city,
                              style: GoogleFonts.poppins(
                                  color: AppColor.textFont, fontSize: 14),
                            ),
                            const Text(', '),
                            Text(
                              addressModel.pinCode,
                              style: GoogleFonts.poppins(
                                  color: AppColor.textFont, fontSize: 14),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone:  ',
                              style: GoogleFonts.poppins(
                                  color: AppColor.textFont, fontSize: 14),
                            ),
                            Text(
                              addressModel.phoneNumber,
                              style: GoogleFonts.poppins(
                                  color: AppColor.textFont,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return Text(
              'No saved addresses found.',
              style: GoogleFonts.poppins(
                  color: AppColor.primary,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            );
          }
        },
      ),
    );
  }
}
