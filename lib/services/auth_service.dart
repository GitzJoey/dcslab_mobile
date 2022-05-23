import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:dcslab_mobile/helper/api_constant.dart';
import 'package:dcslab_mobile/models/user.dart';

class AuthService {
  Future<List<UserModel>?> auth(String email, String password) async {
    try {
      var url = Uri.parse('${ApiConstants.baseUrl}/api/auth');
      var response = await http.post(url,
          headers: <String, String>{'Content-Type': ApiConstants.contentType},
          body: jsonEncode(
              <String, String>{'email': email, 'password': password}));
      if (response.statusCode == 200) {
        List<UserModel> model = userModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
