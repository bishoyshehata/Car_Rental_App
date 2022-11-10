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
                  text: "Car Info",
                  color: Colors.white,
                  isUndeLine: false,
                  fontsize: 27),
            ),
      body: Obx(() =>
          controller.isLoading.value
          ? Center(
        child: CircularProgressIndicator(
          color: Colors.orange,
        ),
      )
          : SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .3,
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
                width: MediaQuery.of(context).size.width*.85 ,
                child: const Divider(
                  thickness: 1,
                  color: Colors.black,
                )),
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text_Utils(
                  fontWeight: FontWeight.bold,
                  text:
                  "Chery Evny ",
                  color: Colors.black,
                  isUndeLine: false,
                  fontsize: 30),
            ),
            const SizedBox(
              height: 6,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 90,
                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "Color :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 20),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    alignment: Alignment.centerLeft,
                    child: const Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: "Grey",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 90,

                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "Model :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 20),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    alignment: Alignment.centerLeft,
                    child: const Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: "2019",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 90,

                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "grade :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 20),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    alignment: Alignment.centerLeft,
                    child: const Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:
                        "1",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 90,

                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "plate no :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 20),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * .22,
                    height: MediaQuery.of(context).size.height * 0.08,
                    alignment: Alignment.centerLeft,
                    child: const Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: " 1542 ص ع ب",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 90,

                  // width: MediaQuery.of(context).size.width * .22,
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.centerLeft,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: "License end :",
                      color: Colors.grey,
                      isUndeLine: false,
                      fontsize: 20),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * .22,
                    height: MediaQuery.of(context).size.height * 0.08,
                    alignment: Alignment.centerLeft,
                    child: const Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: "14March2022",
                        color: Colors.orange,
                        isUndeLine: false,
                        fontsize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),)
    ));
  }
}
