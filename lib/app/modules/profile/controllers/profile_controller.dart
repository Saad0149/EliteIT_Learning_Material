import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  List profile = [
    {
      'icon': Icons.upcoming_sharp,
      'desc': 'Upcoming Order',
    },
    {
      'icon': Icons.work_history_sharp,
      'desc': 'Dispose Pickup & History',
    },
    {
      'icon': Icons.edit_document,
      'desc': 'Document Verification',
    },
    {
      'icon': Icons.location_on_outlined,
      'desc': 'Manage Address Book',
    },
    {
      'icon': Icons.headset_mic_outlined,
      'desc': 'Customer Support',
    },
    {
      'icon': Icons.discount_outlined,
      'desc': 'Coupons',
    },
    {
      'icon': Icons.person,
      'desc': 'Refer Friends',
    },
    {
      'icon': Icons.star_border_rounded,
      'desc': 'Rate Us',
    },
    {
      'icon': Icons.logout_rounded,
      'desc': 'Logout',
    },
  ];
}
