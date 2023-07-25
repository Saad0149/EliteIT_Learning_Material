import 'package:http/http.dart' as http;
import '../ProductModule/Model/product_model.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    try {
      var response = await client.get(
        Uri.parse(
            'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'),
      );
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return productFromJson(jsonString);
      } else {
        return [];
      }
    } catch (e) {
      print('Unknown Error: $e');
      rethrow;
    }
  }
}
