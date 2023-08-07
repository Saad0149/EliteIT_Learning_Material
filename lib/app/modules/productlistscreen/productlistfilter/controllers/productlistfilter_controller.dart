import 'package:get/get.dart';

class ProductlistfilterController extends GetxController {
  List category = [
    {'name': 'Appliances'},
    {'name': 'Electronice'},
    {'name': 'Health Care'},
    {'name': 'Machines'},
  ];
  List subCategory = [
    {'name': 'Fridge'},
    {'name': 'Washing Machine'},
    {'name': 'AC'},
    {'name': 'Air Cooler'},
    {'name': 'TV'},
    {'name': 'Vacuum Cleaner'},
    {'name': 'Microwave'},
  ];
  List sort = [
    {'name': 'Best Moving'},
    {'name': 'Top Rating'},
    {'name': 'Latest'},
    {'name': 'Price: Low to High'},
    {'name': 'Price: High to Low'},
  ];
}
