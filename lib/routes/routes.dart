import 'package:car_rental/logic/bindings/main_binding.dart';
import 'package:car_rental/screens/auth/login.dart';
import 'package:car_rental/screens/layout/main_screen.dart';
import 'package:car_rental/screens/tab_screens_booking/layout/myBooking_screen.dart';
import 'package:car_rental/screens/tap_screens_voucher/layout/Vouchers_screen.dart';
import 'package:car_rental/screens/welcome.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const welcomeScreen = Routes.welcomeScreen;

  static final routes = [
    GetPage(name: Routes.welcomeScreen, page: () =>  Welcome_Screen()),
    GetPage(
      name: Routes.welcomeScreen,
      page: () => Welcome_Screen(),

    ),
    GetPage(
      name: Routes.logInScreen,
      page: () => Login_Screen(),

    ),

    GetPage(
      name: Routes.mainScreen,
      page: () => Main_Screen(),
      binding: MainBinding()

    ),
    GetPage(
      name: Routes.myBookingScreen,
      page: () => MyBokking_Screen(),

    ),
    GetPage(
        name: Routes.vouchersScreen,
        page: () => Vouchers_Screen(),

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


}
