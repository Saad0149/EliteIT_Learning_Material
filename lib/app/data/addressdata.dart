class AddressModel {
  final String name;
  final String phoneNumber;
  final String address;
  final String locality;
  final String city;
  final String pinCode;
  final String state;
  final String addressType;

  AddressModel({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.locality,
    required this.city,
    required this.pinCode,
    required this.state,
    required this.addressType,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'locality': locality,
      'city': city,
      'pinCode': pinCode,
      'state': state,
      'addressType': addressType,
    };
  }

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      locality: json['locality'],
      city: json['city'],
      pinCode: json['pinCode'],
      state: json['state'],
      addressType: json['addressType'],
    );
  }
}
