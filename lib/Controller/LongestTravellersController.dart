import 'dart:convert';
import 'package:picksfromthepaddock/Model/LongestTravellersModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;


class LongestTravellersController {
  Future<LongestTravellersModel> getlongestTravvellers() async {
    final response = await http.post(Uri.parse("$url1/longest-traveller"));
    if (response.statusCode == 200) {
      print(response.body);
      return LongestTravellersModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Longest Travellers');
    }
  }
}
