import 'dart:convert';

import 'package:picksfromthepaddock/Model/EyecatchersModel.dart';
import 'package:picksfromthepaddock/Model/meetTeamModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class MeetTeamController{

  Future<MeetTeam> getTeam() async {
    final response = await http.post(Uri.parse("$url1/get-team"));
    if (response.statusCode == 200) {

      return MeetTeam.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Team');
    }
  }
}