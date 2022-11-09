import 'dart:convert';
import 'dart:developer';
import 'package:car_rental/models/car_info_model.dart';
import 'package:car_rental/theme/strings.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class carInfoServices {
  static Future<CarInfoModel> carInfo(Map<String, String> bodyData) async {
    var access_token = GetStorage().read("access_token");
    print("===========access_token============");
    print(access_token);
    print("=======================");
    var response = await http.post(
        Uri.parse("$baseUrl/ownerCars/getFilesByCarId"),
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer " + access_token
        },body: bodyData);
    if (response.statusCode == 200) {
      return CarInfoModel.fromJson(jsonDecode(response.body));
    } else {
      log("data ============= =  ${response.body}"  );

      return throw Exception("Error 500");

    }
  }

}