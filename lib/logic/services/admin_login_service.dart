import 'dart:convert';
import 'package:car_rental/models/admin_login_model.dart';
import 'package:car_rental/theme/strings.dart';
import 'package:http/http.dart' as http;

class adminLoginService {
  static Future<AdminLoginModel>adminLogin(
      Map<String, String> bodyData) async {
    var response = await http.post(Uri.parse("$baseUrl/login"),
        headers: {"Accept": "application/json"}, body: bodyData);
    if (response.statusCode == 200) {
      return AdminLoginModel.fromJson(jsonDecode(response.body));
    }else {
      return throw Exception("Error 500");
    }

  }
}
