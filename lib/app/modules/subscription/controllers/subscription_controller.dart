import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscriptionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  List currentlyOwned = [
    {
      'desc': 'Top Load 6 Kg Washing Machine',
      'image': 'assets/washing-machine.jpg',
      'timeleft': '1 Month Left',
      'startDate': '10-April',
      'endDate': '10-May',
    },
  ];
  List pastOwned = [
    {
      'desc': '2 Ton Gree Ac With Smart Temperature Adjustment Technology',
      'image': 'assets/ac.jpg',
      'timeleft': '2 Months Ago',
      'startDate': '12-Jan',
      'endDate': '12-Feb',
    },
  ];

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    update();
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
