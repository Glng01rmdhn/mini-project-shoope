import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List> getProducts() async {
    var res = await http.get(Uri.parse('https://dummyjson.com/products'));
    var hasil = jsonDecode(res.body);

    return hasil['products'];
  }
}