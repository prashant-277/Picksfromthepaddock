import 'dart:convert';

import 'package:picksfromthepaddock/Model/podcastModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class PodcastController {
  Future<Podcast> getPodcast() async {
    final response = await http.post(Uri.parse("$url1/get-podcast"));
    if (response.statusCode == 200) {

      return Podcast.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Podcast');
    }
  }
}