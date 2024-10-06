import 'dart:convert';
import 'dart:io';

import 'package:alison_informatics_task/model/home_page_model.dart';
import 'package:alison_informatics_task/utils/constants/strings_constants.dart';
import 'package:alison_informatics_task/utils/helper/shared_preferences_helper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiController extends ChangeNotifier {
  loginApi() async {
    try {
      var request = http.MultipartRequest('POST',
          Uri.parse('$baseUrl/login?email_phone=8547541134&password=12345678'));
      request.fields
          .addAll({'email_phone': '8547541134', 'password': '12345678'});

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var result = await response.stream.bytesToString();
        var data = jsonDecode(result);

        var token = data["customerdata"]["token"];
        var id = data["customerdata"]["id"];
        print(id);

        await SharedPreferencesHelper.setValues("token", token);
        await SharedPreferencesHelper.setValues("id", id);
      } else {}
    } catch (e) {
      throw Exception("Something went wrong ---$e");
    }
  }

  getHomePageDetails() async {
    try {
      var token = await SharedPreferencesHelper.getValues("token");
      var id = await SharedPreferencesHelper.getValues("id");
      print("------------- == $id & $token");
      var request =
          http.Request('POST', Uri.parse('$baseUrl/home?id=$id&token=$token'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {

        var result = await response.stream.bytesToString();
        HomePageModel data = HomePageModel.fromRawJson(result);
        print(data);
        return result;
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {}
  }
}
