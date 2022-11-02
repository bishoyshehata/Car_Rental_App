import 'package:car_rental/logic/services/car_details_service.dart';
import 'package:car_rental/models/car_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../routes/routes.dart';
import '../../screens/rent_screen.dart';
import '../../screens/ride_screen.dart';
import '../../screens/share_screen.dart';
import '../../screens/subscribe_screen.dart';
import '../../screens/user_account_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;
  List carDataList = [].obs;
  var isLoading = true.obs;



  final tabs = [
    Rent_Screen(),
    Share_Screen(),
    Ride_Screen(),
    Subscribe_Screen(),
    User_Account_Screen()
  ].obs;

  final Title = [" ", " ", " ", " ", " "].obs;


  void getCarDetails() async {
    CarDetailsModel cars = await carDetailsServices.carDetails();
     if (cars.status == 1) {

       if(carDataList.length == 0) {
         if(cars.data==null){
           carDataList=[].obs;
         }
         carDataList.addAll(cars.data);
       }
       if(carDataList.length != cars.data.length){
             List carDataList = [].obs;
             carDataList.addAll(cars.data);
          }
       print("===================");
       print(carDataList);
       print("===================");

       isLoading.value = false;
     }else {
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

  }




