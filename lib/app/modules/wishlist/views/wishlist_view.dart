import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';
import '../controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  WishlistView({super.key});
  @override
  final WishlistController controller = Get.put(WishlistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wishlist',
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
              onPressed: () {},
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.boxFillColor,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 330,
        ),
        itemCount: controller.wishlistItems.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: AppColor.subtitle),
                  ),
                  child: Image.asset(controller.wishlistItems[index]['image']),
                ),
                const SizedBox(height: 10),
                Text(
                  controller.wishlistItems[index]['description'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.subtitle),
                ),
                Row(
                  children: [
                    Text(
                      controller.wishlistItems[index]['price'],
                      style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.normal,
                          color: AppColor.textFont),
                    ),
                    Text(
                      controller.wishlistItems[index]['price/month'],
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColor.primary),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColor.subtitle)),
                      child: const Icon(
                        Icons.add_shopping_cart_sharp,
                        size: 25,
                        color: AppColor.subtitle,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primary,
                        elevation: 0.0,
                      ),
                      child: Text(
                        'Add to Cart',
                        style: GoogleFonts.poppins(
                            color: AppColor.backgroundColor, fontSize: 13),
                      ),
                      onPressed: () {},
                    )),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
