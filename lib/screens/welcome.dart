import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/splash.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey.withOpacity(.5),
          ),
          Container(
            color: Colors.black.withOpacity(.1),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Padding(
                      padding:
                          const EdgeInsets.only(top: 600, left: 30, right: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text_Utils(
                                  fontWeight: FontWeight.normal,
                                  text: "للاستمرار باللغة العربية",
                                  color: Colors.white,
                                  fontsize: 20,
                                  isUndeLine: false),
                               InkWell(
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onTap: (){
                                  Get.offNamed(Routes.logInScreen);
                                },
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text_Utils(
                                  fontWeight: FontWeight.normal,
                                  text: "To Continue With English",
                                  color: Colors.white,
                                  fontsize: 20,
                                  isUndeLine: false),
                              InkWell(
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onTap: (){
                                  Get.offNamed(Routes.logInScreen);
                                },
                              )
                            ],
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 30,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
