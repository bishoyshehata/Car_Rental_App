import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/auth/auth_text_form_field.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome_Screen extends StatelessWidget {
   Welcome_Screen({Key? key}) : super(key: key);
   final TextEditingController Controller = TextEditingController();
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
              'assets/images/car7.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(.3),
          ),
          Positioned(
            top: 530,
            left:  20,

            child: Row(
              children: [
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/Globe.png")),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 300,

                  child: Auth_TextFormField(
                      controller: Controller,
                      obsecureText: false,
                      validator: (){},
                      prefex: Icon(Icons.emoji_flags, color:  Colors.black,),
                      suffix:  Icon(Icons.arrow_drop_down,color:  Colors.black),
                      hintText: 'Enter Your Language..'),
                )
              ],
            ),
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
                                onTap: () {
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
                            children: [
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
                                onTap: () {
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
