import 'dart:convert';

import 'package:car_rental/models/car_details_model.dart';
import 'package:car_rental/theme/strings.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../../theme/strings.dart';

class carDetailsServices {
  static Future<CarDetailsModel> carDetails() async {
    var access_token = GetStorage().read("access_token");
    print("===========access_token============");
    print(access_token);
    print("=======================");
    var response = await http.post(Uri.parse("$baseUrl/ownerCars"), headers: {
      "Accept": "application/json",
      "Authorization": "Bearer " + access_token
    });
    if (response.statusCode == 200) {
      return CarDetailsModel.fromJson(jsonDecode(response.body));
    } else {
      return throw Exception("Error 500");
    }
  }
}
