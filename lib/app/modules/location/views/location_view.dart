import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import 'package:rental_dispose_app/app/modules/address/views/address_view.dart';
import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  LocationView({Key? key}) : super(key: key);
  final LocationController _cityName = Get.put(LocationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Select Location',
          style: GoogleFonts.poppins(color: AppColor.primary, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.backgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 130,
            color: AppColor.boxFillColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColor.textFont, width: 1.0),
                        borderRadius: BorderRadius.circular(5)),
                    child: ListTile(
                      leading: const Icon(Icons.search_rounded,
                          color: AppColor.primary, size: 30),
                      title: TextFormField(
                        onChanged: (name) {
                          _cityName.setCityName(name);
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: GoogleFonts.poppins(
                              color: AppColor.subtitle, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'Or',
                  style: GoogleFonts.poppins(
                      color: AppColor.textFont, fontSize: 15),
                )),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Search Your City',
              style:
                  GoogleFonts.poppins(color: AppColor.textFont, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () => Get.offAll(AddressView()),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0),
                    itemCount: _cityName.cityNames.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 150,
                        //color: AppColor.backgroundColor,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.boxFillColor)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColor.boxFillColor,
                              maxRadius: 30,
                              child: Image.asset(
                                _cityName.cityNames[index]['image'],
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(_cityName.cityNames[index]['name']),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
