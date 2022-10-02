
import 'package:get/get.dart';

import '../controllers/main_controllerr.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

      Get.put(MainController());

  }

}