import 'package:car_rental/logic/controllers/main_controllerr.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

class Car_Info_Screen extends StatelessWidget {
  Car_Info_Screen({Key? key}) : super(key: key);
  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text_Utils(
            fontWeight: FontWeight.bold,
            text: "Car Details",
            color: Colors.white,
            isUndeLine: false,
            fontsize: 20),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height*.3,
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                  items: controller.carImages,

                )),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: const Divider(
                  thickness: 1,
                  color: Colors.black,
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              child: Text_Utils(
                  fontWeight: FontWeight.bold,
                  text:"Naame of caame of caame of caame of caame of came of car " ,
                  color: Colors.black,
                  isUndeLine: false,
                  fontsize: 20),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width *
                    .8,
                child: const Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey,
                )),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 50,),
                Container(
                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height *
                      .06,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "Color :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 16),
                ),
                Expanded(
                  child: Container(
                    
                    height: MediaQuery
                        .of(context)
                        .size
                        .height *
                        .06,
                    alignment: Alignment.centerLeft,
                    child: Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:
                        " ",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width *
                  .8,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 50,),
                Container(
                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height *
                      .06,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "Model :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 16),
                ),
                Expanded(
                  child: Container(
                    
                    height: MediaQuery
                        .of(context)
                        .size
                        .height *
                        .06,
                    alignment: Alignment.centerLeft,
                    child: Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:
                        " ",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width *
                  .8,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                SizedBox(width: 50,),
                Container(
                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height *
                      .06,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "grade :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 16),
                ),
                Expanded(
                  child: Container(
                  
                    height: MediaQuery
                        .of(context)
                        .size
                        .height *
                        .06,
                    alignment: Alignment.centerLeft,
                    child: Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:
                        " ssssssssssssssssssssssssssssssssssssssssss",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width *
                  .8,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 50,),
                Container(
                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height *
                      .06,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "plate no :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 16),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width *
                        .22,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height *
                        .06,
                    alignment: Alignment.centerLeft,
                    child: Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:
                        " dddddddddddddddddddddddddddddddddddddd",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width *
                  .8,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 50,),
                Container(
                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height *
                      .06,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "License end :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 16),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width *
                        .22,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height *
                        .06,
                    alignment: Alignment.centerLeft,
                    child: Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:
                        " sadfffffffffffffffffffffff ",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width *
                  .8,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
