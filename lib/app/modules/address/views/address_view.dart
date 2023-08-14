import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:rental_dispose_app/app/modules/login/views/login_view.dart';
import '../../location/controllers/location_controller.dart';
import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  AddressView({Key? key}) : super(key: key);
  @override
  final AddressController controller = Get.put(AddressController());
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<LocationController>(() => LocationController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          'Add Address',
          style: GoogleFonts.poppins(
              color: AppColor.primary,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        leading: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
          child: ElevatedButton(
            onPressed: () => Get.offAll(LoginView()),
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: AppColor.backgroundColor,
              alignment: Alignment.center,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                      color: AppColor.boxFillColor, width: 2.5)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_rounded,
                  color: AppColor.primary,
                  size: 14,
                ),
              ],
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 20,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ElevatedButton(
                onPressed: () => Get.offAll(() => const DashboardView()),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  backgroundColor: AppColor.backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: AppColor.boxFillColor, width: 2.5)),
                ),
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont, fontSize: 15),
                )),
          ),
        ],
      ),
      backgroundColor: AppColor.boxFillColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
                height: 200,
                width: double.infinity,
                color: AppColor.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Contact Details',
                        style: GoogleFonts.poppins(
                            color: AppColor.textFont,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: AppColor.boxFillColor, width: 1.5)),
                          labelText: 'Name*',
                          labelStyle: GoogleFonts.poppins(
                              color: AppColor.textFont, fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: controller.phoneNumberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: AppColor.boxFillColor, width: 1.5)),
                          labelText: 'Phone Number*',
                          labelStyle: GoogleFonts.poppins(
                              color: AppColor.textFont, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 320,
              color: AppColor.backgroundColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Address Info',
                      style: GoogleFonts.poppins(
                          color: AppColor.textFont,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: controller.addressController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                color: AppColor.boxFillColor, width: 1.5)),
                        labelText: 'Address (Flat No/Building Name)*',
                        labelStyle: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controller.localityController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                color: AppColor.boxFillColor, width: 1.5)),
                        labelText: 'Locality/Area/Street*',
                        labelStyle: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller.cityController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: AppColor.boxFillColor, width: 1.5)),
                            labelText: 'City*',
                            labelStyle: GoogleFonts.poppins(
                                color: AppColor.textFont, fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: controller.pincodeController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: AppColor.boxFillColor, width: 1.5)),
                            labelText: 'Pin Code*',
                            labelStyle: GoogleFonts.poppins(
                                color: AppColor.textFont, fontSize: 15),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controller.stateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                color: AppColor.boxFillColor, width: 1.5)),
                        labelText: 'State*',
                        labelStyle: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 160,
              width: double.infinity,
              color: AppColor.backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Type of Address',
                      style: GoogleFonts.poppins(
                          color: AppColor.textFont, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      controller.radioValues.length,
                      (index) {
                        return Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.onRadioSelected(index);
                              },
                              borderRadius: BorderRadius.circular(20.0),
                              child: Obx(() {
                                return Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        controller.selectedRadioIndex.value ==
                                                index
                                            ? AppColor.boxFillColor
                                            : Colors.transparent,
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Icon(
                                    controller.selectedRadioIndex.value == index
                                        ? Icons.circle_rounded
                                        : Icons.circle_outlined,
                                    size: 16,
                                    color:
                                        controller.selectedRadioIndex.value ==
                                                index
                                            ? AppColor.primary
                                            : AppColor.backgroundColor,
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              controller.radioValues[index],
                              style: GoogleFonts.poppins(
                                  color: AppColor.textFont, fontSize: 12),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              controller.saveAddress();
                              Get.offAll(const DashboardView());
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(AppColor.primary)),
                            child: const Text('Save Address & Continue')),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
