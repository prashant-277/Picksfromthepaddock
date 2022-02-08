import 'dart:convert';
import 'package:picksfromthepaddock/Model/InformTrainerModel.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

final url1 = url.basicUrl;

class InformTrainerController{

  Future<InformTrainer> getInformTrainer() async {
    final response = await http.post(Uri.parse("$url1/in-form-trainer"));
    if (response.statusCode == 200) {
      return InformTrainer.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Inform Trainer');
    }
  }
}