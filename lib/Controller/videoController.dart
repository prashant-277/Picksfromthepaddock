import 'dart:convert';

import 'package:picksfromthepaddock/Model/videoModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class VideoController {
  Future<Video> getVideo() async {
    final response = await http.post(Uri.parse("$url1/get-video"));
    if (response.statusCode == 200) {
      return Video.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load video');
    }
  }
}
