import 'package:car_rental/logic/bindings/auth_binding.dart';
import 'package:car_rental/logic/bindings/main_binding.dart';
import 'package:car_rental/screens/auth/admin/admin_login.dart';
import 'package:car_rental/screens/auth/main_login.dart';
import 'package:car_rental/screens/auth/owner/owner_sign_up.dart';
import 'package:car_rental/screens/auth/user/user_login.dart';
import 'package:car_rental/screens/layout/main_screen.dart';
import 'package:car_rental/screens/ourCars/car_info.dart';
import 'package:car_rental/screens/ourCars/ourCars_screen.dart';
import 'package:car_rental/screens/tab_screens_booking/layout/myBooking_screen.dart';
import 'package:car_rental/screens/tap_screens_voucher/layout/Vouchers_screen.dart';
import 'package:get/get.dart';
import '../screens/admin_screen/admin_screen.dart';
import '../screens/auth/owner/owner_login.dart';
import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';

class AppRoutes {
  static const welcomeScreen = Routes.welcomeScreen;

  static final routes = [
    GetPage(name: Routes.welcomeScreen,
        page: () => Welcome_Screen()),
    GetPage(
        name: Routes.mainLogInScreen,
        page: () => Main_Login_Scren(),
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
    GetPage(
      name: Routes.adminMainScreen,
      page: () => Admin_Main_Screen(),
      binding: MainBinding(),

    ),
    GetPage(
      name: Routes.userLoginScreen,
      page: () => User_Login_Screen(),
      binding: MainBinding(),

    ),
    GetPage(
      name: Routes.adminLoginScreen,
      page: () => Admin_Login_Screen(),
      binding: MainBinding(),

    ),
    GetPage(
      name: Routes.ownerLoginScreen,
      page: () => Owner_Login_Screen(),
      binding: MainBinding(),

    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const mainLogInScreen = '/mainLogInScreen';
  static const signUpScreen = '/signUpScreen';
  static const mainScreen = '/mainScreen';
  static const myBookingScreen = '/myBookingScreen';
  static const vouchersScreen = '/vouchersScreen';
  static const ourCarsScreen = '/ourCarsScreen';
  static const splashScreen = '/splashScreen';
  static const carInfoScreen = '/carInfoScreen';
  static const adminMainScreen = '/adminMainScreen';
  static const userLoginScreen = '/userLoginScreen';
  static const adminLoginScreen = '/adminLoginScreen';
  static const ownerLoginScreen = '/ownerLoginScreen';

}
