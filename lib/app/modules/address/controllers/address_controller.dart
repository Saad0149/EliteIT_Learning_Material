import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_dispose_app/app/data/addressdata.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressController extends GetxController {
  RxInt selectedRadioIndex = RxInt(-1);
  final List<String> radioValues = ['Home', 'Hostel', 'Office', 'Others'];

  void onRadioSelected(int index) {
    selectedRadioIndex.value = index;
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController localityController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController addressTypeController = TextEditingController();

  Future<void> saveAddress() async {
    final prefs = await SharedPreferences.getInstance();

    final newAddress = AddressModel(
      name: nameController.text,
      phoneNumber: phoneNumberController.text,
      address: addressController.text,
      locality: localityController.text,
      city: cityController.text,
      pinCode: pincodeController.text,
      state: stateController.text,
      addressType: addressController.text,
    );

    final existingAddressesJson = prefs.getStringList('addresses') ?? [];
    existingAddressesJson.add(json.encode(newAddress.toJson()));

    await prefs.setStringList('addresses', existingAddressesJson);
  }

  Future<List<AddressModel>> getSavedAddresses() async {
    final prefs = await SharedPreferences.getInstance();
    final existingAddressesJson = prefs.getStringList('addresses') ?? [];

    final existingAddresses = existingAddressesJson
        .map((addressJson) => AddressModel.fromJson(json.decode(addressJson)))
        .toList();
    //print('Existing addresses: $existingAddressesJson');

    return existingAddresses;
  }
}
