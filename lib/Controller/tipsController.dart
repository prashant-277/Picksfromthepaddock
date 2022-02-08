import 'dart:convert';

import 'package:picksfromthepaddock/Model/tipsModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class TipsController {
  Future<Tips> getTips() async {
    final response = await http.post(Uri.parse("$url1/get-tips"));
    if (response.statusCode == 200) {
      return Tips.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load tips');
    }
  }
}
