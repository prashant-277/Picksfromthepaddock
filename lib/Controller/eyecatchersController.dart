import 'dart:convert';

import 'package:picksfromthepaddock/Model/EyecatchersModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class EyecatchersController{

  Future<Eyecatchers> getEyecatchers() async {
    final response = await http.post(Uri.parse("$url1/get-eye-tracker"));
    if (response.statusCode == 200) {

      return Eyecatchers.fromJson(jsonDecode(response.body));

    } else {
      throw Exception('Failed to load Eyecatchers');
    }
  }
}