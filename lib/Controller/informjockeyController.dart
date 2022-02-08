import 'dart:convert';
import 'package:picksfromthepaddock/Model/InformJockeyModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class InformjockeyController{

  Future<InformJockeyModel> getInformJockey() async {
    final response = await http.post(Uri.parse("$url1/in-form-jockey"));
    if (response.statusCode == 200) {
      return InformJockeyModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Inform Jockey');
    }
  }
}