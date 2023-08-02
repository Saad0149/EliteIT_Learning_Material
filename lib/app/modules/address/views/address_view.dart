import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/location/views/location_view.dart';
import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  AddressView({Key? key}) : super(key: key);
  @override
  final AddressController controller = Get.put(AddressController());
  @override
  Widget build(BuildContext context) {
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
            onPressed: () => Get.offAll(LocationView()),
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
                onPressed: () {},
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
              height: 180,
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
                    children: [
                      InkWell(
                        onTap: controller.toggleSelection,
                        borderRadius: BorderRadius.circular(3.0),
                        child: Obx(() {
                          return Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.isSelected.value
                                  ? Colors.blue
                                  : Colors.transparent,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              controller.isSelected.value
                                  ? Icons.check
                                  : Icons.add,
                              size: 12,
                              color: controller.isSelected.value
                                  ? Colors.white
                                  : Colors.blue,
                            ),
                          );
                        }),
                      ),
                      Text(
                        'Home',
                        style: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 12),
                      ),
                      InkWell(
                        onTap: controller.toggleSelection,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Obx(() {
                          return Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.isSelected.value
                                  ? Colors.blue
                                  : Colors.transparent,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              controller.isSelected.value
                                  ? Icons.check
                                  : Icons.add,
                              size: 12,
                              color: controller.isSelected.value
                                  ? Colors.white
                                  : Colors.blue,
                            ),
                          );
                        }),
                      ),
                      Text(
                        'Hostel',
                        style: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 12),
                      ),
                      InkWell(
                        onTap: controller.toggleSelection,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Obx(() {
                          return Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.isSelected.value
                                  ? Colors.blue
                                  : Colors.transparent,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              controller.isSelected.value
                                  ? Icons.check
                                  : Icons.add,
                              size: 12,
                              color: controller.isSelected.value
                                  ? Colors.white
                                  : Colors.blue,
                            ),
                          );
                        }),
                      ),
                      Text(
                        'Office',
                        style: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 12),
                      ),
                      InkWell(
                        onTap: controller.toggleSelection,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Obx(() {
                          return Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.isSelected.value
                                  ? Colors.blue
                                  : Colors.transparent,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              controller.isSelected.value
                                  ? Icons.check
                                  : Icons.add,
                              size: 12,
                              color: controller.isSelected.value
                                  ? Colors.white
                                  : Colors.blue,
                            ),
                          );
                        }),
                      ),
                      Text(
                        'Others',
                        style: GoogleFonts.poppins(
                            color: AppColor.textFont, fontSize: 12),
                      ),
                    ],
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
                            onPressed: () {},
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
