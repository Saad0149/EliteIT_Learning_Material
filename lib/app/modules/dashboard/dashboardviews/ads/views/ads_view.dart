import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import '../controllers/ads_controller.dart';

class AdsView extends GetView<AdsController> {
  AdsView({Key? key}) : super(key: key);
  final AdsController _sliderController = Get.put(AdsController());
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Obx(
          () => Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      //print(_sliderController.currentIndex.value);
                    },
                    child: CarouselSlider(
                      items: _sliderController.imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'] as String,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: _sliderController.carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: _sliderController.onPageChanged,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    _sliderController.imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _sliderController.goToPage(entry.key),
                    child: Container(
                      width: _sliderController.currentIndex.value == entry.key
                          ? 25
                          : 5,
                      height: 3.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _sliderController.currentIndex.value == entry.key
                            ? AppColor.primary
                            : AppColor.subtitle,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ));
  }
}
