
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/main_controllerr.dart';
import '../../theme/theme.dart';
import '../../widgets/text_utils.dart';

class Car_Builder extends StatelessWidget {
   Car_Builder({Key? key}) : super(key: key);

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Material(
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height *
                            .65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Material(
                                elevation: 10,
                                shadowColor: Colors.black,
                                child: Container(
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height *
                                        .25,
                                    width: double.infinity,
                                    child: Image.asset(
                                      "assets/images/cover.png",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text_Utils(
                                    fontWeight: FontWeight.bold,
                                    text: controller
                                        .carDataList[index]
                                        .name,
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
                                  Container(
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
                                        "${controller.carDataList[index]
                                            .color}",
                                        color: Colors.orange,
                                        isUndeLine: false,
                                        fontsize: 16),
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
                                  Container(
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
                                        "${controller.carDataList[index]
                                            .model}",
                                        color: Colors.orange,
                                        isUndeLine: false,
                                        fontsize: 16),
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
                                  Container(
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
                                        "${controller.carDataList[index]
                                            .grade}",
                                        color: Colors.orange,
                                        isUndeLine: false,
                                        fontsize: 16),
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
                                  Container(
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
                                        "${controller.carDataList[index]
                                            .plateNo}",
                                        color: Colors.orange,
                                        isUndeLine: false,
                                        fontsize: 16),
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
                                  Container(
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
                                        "${controller.carDataList[index]
                                            .licenseEnd} ",
                                        color: Colors.orange,
                                        isUndeLine: false,
                                        fontsize: 16),
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
                      ),
                    ));
              },
              separatorBuilder: (context, index) =>
              const SizedBox(
                height: 0,
              ),
              itemCount: controller.carDataList.length);
        }


}
