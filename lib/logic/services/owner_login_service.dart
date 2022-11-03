import 'dart:convert';
import 'package:car_rental/models/owner_login_model.dart';
import 'package:car_rental/theme/strings.dart';
import 'package:http/http.dart' as http;

class ownerLoginService {
  static Future<OwnerLoginModel>ownerLogin(
      Map<String, String> bodyData) async {
    var response = await http.post(Uri.parse("$baseUrl/login"),
        headers: {"Accept": "application/json"}, body: bodyData);
    if (response.statusCode == 200) {
        return OwnerLoginModel.fromJson(jsonDecode(response.body));
      }else {
      return throw Exception("Error 500");
    }

    }
}
