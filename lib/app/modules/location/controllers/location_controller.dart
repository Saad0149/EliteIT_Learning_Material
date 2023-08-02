import 'package:get/get.dart';

class LocationController extends GetxController {
  RxString cityName = ''.obs;
  void setCityName(String name) {
    cityName.value = name;
  }

  List cityNames = [
    {
      'name': 'Chennai',
      'image': 'assets/chennai.png',
    },
    {
      'name': 'Mumbai',
      'image': 'assets/mumbai.png',
    },
    {
      'name': 'Delhi',
      'image': 'assets/delhi.png',
    },
    {
      'name': 'Pune',
      'image': 'url',
    },
    {
      'name': 'Bangalore',
      'image': 'assets/bangalore.jpg',
    },
    {
      'name': 'Hyderabad',
      'image': 'assets/hyderabad.png',
    },
    {
      'name': 'VisakhaPatnam',
      'image': 'url',
    },
    {
      'name': 'Ahmedabad',
      'image': 'assets/ahmedabad.png',
    },
    {
      'name': 'Rajkot',
      'image': 'url',
    },
  ];
}
