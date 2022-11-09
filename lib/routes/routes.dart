import 'package:car_rental/logic/bindings/auth_binding.dart';
import 'package:car_rental/logic/bindings/main_binding.dart';
import 'package:car_rental/screens/auth/login.dart';
import 'package:car_rental/screens/auth/sign_up.dart';
import 'package:car_rental/screens/layout/main_screen.dart';
import 'package:car_rental/screens/ourCars/car_info.dart';
import 'package:car_rental/screens/ourCars/ourCars_screen.dart';
import 'package:car_rental/screens/tab_screens_booking/layout/myBooking_screen.dart';
import 'package:car_rental/screens/tap_screens_voucher/layout/Vouchers_screen.dart';
import 'package:car_rental/screens/welcome.dart';
import 'package:get/get.dart';

import '../screens/splash_screen.dart';
import '../screens/welcome_screennnnn.dart';

class AppRoutes {
  static const welcomeScreen = Routes.welcomeScreen;

  static final routes = [
    GetPage(name: Routes.welcomeScreen, page: () => Welcome_Screen()),
    GetPage(
        name: Routes.welcomeScreen,
        page: () => Welcome_Screen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.logInScreen,
        page: () => Login_Screen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.signUpScreen,
        page: () => Sign_Up(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.mainScreen,
        page: () => Main_Screen(),
        binding: MainBinding()),
    GetPage(
      name: Routes.myBookingScreen,
      page: () => MyBokking_Screen(),
    ),
    GetPage(
      name: Routes.vouchersScreen,
      page: () => Vouchers_Screen(),
    ),
    GetPage(
      name: Routes.ourCarsScreen,
      page: () => OurCars_Screen(),
       binding: MainBinding(),

  ),
    GetPage(
      name: Routes.splashScreen,
      page: () => Splash_Screen(),

    ),
    GetPage(
      name: Routes.carInfoScreen,
      page: () => Car_Info_Screen(),
      binding: MainBinding(),

    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const logInScreen = '/logInScreen';
  static const signUpScreen = '/signUpScreen';
  static const mainScreen = '/mainScreen';
  static const myBookingScreen = '/myBookingScreen';
  static const vouchersScreen = '/vouchersScreen';
  static const ourCarsScreen = '/ourCarsScreen';
  static const splashScreen = '/splashScreen';
  static const carInfoScreen = '/carInfoScreen';

}
