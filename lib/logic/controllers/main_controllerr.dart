import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../screens/share_screen.dart';
import '../../screens/subscribe_screen.dart';
import '../../screens/rent_screen.dart';
import '../../screens/ride_screen.dart';
import '../../screens/user_account_screen.dart';

class MainController extends GetxController{

 RxInt currentIndex = 0.obs ;


 final tabs = [
  Rent_Screen(),
  Share_Screen(),
  Ride_Screen(),
  Subscribe_Screen(),
  User_Account_Screen()
 ].obs;


 final Title = [
  "Home",
  "Categories",
  "Favorites",
  "Setting",
  "Account"
 ].obs;


}