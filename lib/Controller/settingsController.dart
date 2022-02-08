import 'dart:convert';

import 'package:picksfromthepaddock/Model/SettingModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class SettingsController {
  Future<Settings> getSettings() async {
    final response = await http.post(Uri.parse("$url1/get-setting"));
    if (response.statusCode == 200) {
      return Settings.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Settings');
    }
  }
}