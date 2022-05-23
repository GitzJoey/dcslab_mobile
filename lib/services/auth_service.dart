import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:dcslab_mobile/helper/api_constant.dart';
import 'package:dcslab_mobile/models/user.dart';

class AuthService {
  Future<List<UserModel>?> auth() async {
    try {
      var url = Uri.parse('${ApiConstants.baseUrl}/api/auth');
      var response = await http.get(url);
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
