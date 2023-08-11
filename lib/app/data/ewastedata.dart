class EwasteData {
  final String category;
  final String brand;
  final String model;
  final String yearsInUse;
  var image = '';

  EwasteData(
      {required this.category,
      required this.brand,
      required this.model,
      required this.yearsInUse,
      required this.image});

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'brand': brand,
      'model': model,
      'yearsInUse': yearsInUse,
      'image': image,
    };
  }

  factory EwasteData.fromJson(Map<String, dynamic> json) {
    return EwasteData(
      category: json['category'],
      brand: json['brand'],
      model: json['model'],
      yearsInUse: json['yearsInUse'],
      image: json['image'],
    );
  }
}
