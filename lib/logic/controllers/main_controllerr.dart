import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../screens/category_screen.dart';
import '../../screens/favorite_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/setting_screen.dart';
import '../../screens/user_account_screen.dart';

class MainController extends GetxController{

 RxInt currentIndex = 0.obs ;


 final tabs = [
  Home_Screen(),
  Category_Screen(),
  Favorite_Screen(),
  Setting_Screen(),
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