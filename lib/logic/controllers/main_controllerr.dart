import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:car_rental/logic/services/car_info_service.dart';
import 'package:car_rental/logic/services/our_cars_service.dart';
import 'package:car_rental/models/car_info_model.dart';
import 'package:car_rental/models/our_cars_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/layout/Screens/rent_screen.dart';
import '../../screens/layout/Screens/ride_screen.dart';
import '../../screens/layout/Screens/share_screen.dart';
import '../../screens/layout/Screens/subscribe_screen.dart';
import '../../screens/layout/Screens/user_account_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;
  List carDataList = [].obs;
  List<DataCarInfoModel> carInfoList = [];
  List<Widget> carImages = [];

  var isLoading = true.obs;

  final tabs = [
    Rent_Screen(),
    Share_Screen(),
    Ride_Screen(),
    Subscribe_Screen(),
    User_Account_Screen()
  ].obs;

  final Title = [" ", " ", " ", " ", " "].obs;

  void getOurCars() async {
    OurCarsModel cars = await carDetailsServices.carDetails();
    if (cars.status == 1) {
      if (carDataList.length == 0) {
        if (cars.data == null) {
          carDataList = [].obs;
        }
        carDataList.addAll(cars.data);
      }
      if (carDataList.length != cars.data.length) {
        List carDataList = [].obs;
        carDataList.addAll(cars.data);
      }
      print("===================");
      print(carDataList);
      print("===================");

      isLoading.value = false;
    } else {
      Get.snackbar(
        "Error",
        cars.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void getCarInfo(
    String car_id,
  ) async {
    Map<String, String> data = {
      "car_id": car_id,
    };
    CarInfoModel cars = await carInfoServices.carInfo(data);
    cars.data.forEach((element) {
      log("${element.image.toString()}");
      carImages.add(Image.memory(base64Decode((formateBase64(element.image)))),);
    });

    if (cars.status == 1) {
      if (carInfoList.length == 0) {
        if (cars.data == null) {
          carInfoList = [];
        }
        carInfoList.addAll(cars.data);
      }
      if (carInfoList.length != cars.data.length) {
        carInfoList.addAll(cars.data);
        cars.data.forEach((element) {
          carImages.add(Image.network(element.image));
        });
      }

      isLoading.value = false;
    } else {
      Get.snackbar(
        "Error",
        cars.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  String formateBase64(base64) {
    return base64.split(",").last;
  }
}
