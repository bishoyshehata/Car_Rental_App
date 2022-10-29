import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/text_utils.dart';

class Sign_Up extends StatelessWidget {
  Sign_Up({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController addressController = TextEditingController();


  final formkey = GlobalKey<FormState>();

  // SolidController _controller = SolidController();

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/white.jpg", fit: BoxFit.cover,)),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * (1 / 3),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * (1 / 3),
                        decoration: const BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(60))),
                        child: Image.asset("assets/images/splash_ui.png",
                            fit: BoxFit.fill),
                        clipBehavior: Clip.antiAlias,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Image.asset("assets/images/logo.jpeg"),
                                clipBehavior: Clip.antiAlias,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text_Utils(
                                      fontWeight: FontWeight.w500,
                                      text: "Sign Up",
                                      color: Colors.white,
                                      isUndeLine: false,
                                      fontsize: 28),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return Auth_TextFormField(
                          keyboard: TextInputType.text,
                          controller: nameController,
                          obsecureText: false,
                          validator: (value) {
                            if (value
                                .toString()
                                .length == 0) {
                              return "Please enter your name";
                            }
                          },
                          prefex:
                          Icon(Icons.text_fields, size: 30, color: mainColor),
                          suffix: const Text(""),
                          hintText: "Name",
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return Auth_TextFormField(
                          keyboard: TextInputType.text,
                          controller: passController,
                          obsecureText:
                          controller.isVisibilty ? false : true,
                          validator: (value) {
                            if (value
                                .toString()
                                .length <= 6) {
                              return "Your password is too short";
                            } else {
                              return null;
                            }
                          },
                          prefex: Icon(
                            Icons.lock,
                            size: 30,
                            color: Get.isDarkMode ? pinkClr : mainColor,
                          ),
                          suffix: GestureDetector(
                              onTap: () {
                                controller.visibility();
                              },
                              child: controller.isVisibilty
                                  ? Icon(
                                Icons.visibility,
                                color: mainColor,
                              )
                                  : Icon(Icons.visibility_off,
                                  color: mainColor)),
                          hintText: "Password",
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return Auth_TextFormField(
                          keyboard: TextInputType.number,
                          controller: idController,
                          obsecureText: false,
                          validator: (value) {
                            if (value
                                .toString()
                                .length != 14) {
                              return "Your ID is not true";
                            }
                          },
                          prefex:
                          const Icon(Icons.credit_card_sharp, size: 30,
                              color: mainColor),
                          suffix: const Text(""),
                          hintText: "National ID",
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return Auth_TextFormField(
                          keyboard: TextInputType.text,
                          controller: addressController,
                          obsecureText: false,
                          validator: (value) {
                            if (value
                                .toString()
                                .length == 0) {
                              return "please enter your address";
                            }
                          },
                          prefex:
                          Icon(Icons.location_on, size: 30, color: mainColor),
                          suffix: const Text(""),
                          hintText: "Address",
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return Auth_TextFormField(
                          keyboard: TextInputType.number,
                          controller: mobileController,
                          obsecureText: false,
                          validator: (value) {
                            if (value
                                .toString()
                                .length < 11||value
                                .toString()
                                .length > 11) {
                              return "Your mobile number is not true";
                            }
                            
                          },
                          prefex:
                          Icon(Icons.phone, size: 30, color: mainColor),
                          suffix: const Text(""),
                          hintText: "Mobile",
                        );
                      }),


                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return AuthButton(
                            onpress: () {
                              if (formkey.currentState!.validate()) {
                                controller.RegistOwner(
                                    nameController.text,
                                    passController.text,
                                    idController.text,
                                    mobileController.text,
                                    addressController.text);

                              }
                            },
                            Text: "Owner Register");
                      }),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
