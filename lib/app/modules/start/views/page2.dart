import 'package:flutter/material.dart';
import 'package:rental_dispose_app/app/data/appcolor.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      child: Container(
        color: AppColor.backgroundColor,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image.asset('assets/2.png'),
        ),
      ),
    );
  }
}
