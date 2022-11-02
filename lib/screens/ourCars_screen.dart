import 'package:car_rental/logic/controllers/main_controllerr.dart';
import 'package:car_rental/screens/cars/car_builder.dart';
import 'package:car_rental/screens/cars/empty_cars.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../theme/theme.dart';

class OurCars_Screen extends StatelessWidget {
  OurCars_Screen({Key? key}) : super(key: key);

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Colors.amber, Colors.orange]),
                ),
              ),
              elevation: 5,
              title: const Text_Utils(
                  fontWeight: FontWeight.bold,
                  text: "Our Cars",
                  color: Colors.white,
                  isUndeLine: false,
                  fontsize: 27),
            ),

            body: Obx((){
              if (controller.isLoading.value) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                );
              } else {
                return controller.carDataList.isNotEmpty? Car_Builder() : Empty_Cars();
              }


            }
            )


        )
    );
  }
}
