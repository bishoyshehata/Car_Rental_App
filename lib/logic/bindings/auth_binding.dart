
import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../controllers/main_controllerr.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(AuthController());
  }

}