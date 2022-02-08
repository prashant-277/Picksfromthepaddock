import 'dart:convert';

import 'package:picksfromthepaddock/Model/newsModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class NewsController {
  Future<News> getnews() async {
    final response = await http.post(Uri.parse("$url1/get-news"));
    if (response.statusCode == 200) {
      print(jsonDecode(response.body).toString());
      return News.fromJson(jsonDecode(response.body));

    } else {
      throw Exception('Failed to load News');
    }
  }
}