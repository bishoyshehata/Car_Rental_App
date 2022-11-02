import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import '../../routes/routes.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/footer_container.dart';

class Login_Screen extends StatelessWidget {
  Login_Screen({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  // SolidController _controller = SolidController();

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/white.jpg",fit: BoxFit.cover,)),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * (1 / 3),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * (1 / 3),
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
                                    color: Colors.black,
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
                                      fontWeight: FontWeight.bold,
                                      text: "LOG IN",
                                      color: Colors.black87,
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
                      GetBuilder<AuthController>(builder: (_){
                        return  Auth_TextFormField(
                          keyboard: TextInputType.number,
                          controller: mobileController,
                          obsecureText: false,
                          validator: (value) {
                           if(value.toString().length == 0){
                             return "Please enter your password";
                           }
                           else if (value.toString().length < 11 ||value.toString().length > 11) {
                              return "Your mobile is not true";
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
                        return Auth_TextFormField(
                          keyboard: TextInputType.text,
                          controller: passController,
                          obsecureText:
                          controller.isVisibilty ? false : true,
                          validator: (value) {
                            if (value.toString().length <= 6) {
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
                                color: Get.isDarkMode
                                    ? pinkClr
                                    : mainColor,
                              )
                                  : Icon(Icons.visibility_off,
                                  color: mainColor)),
                          hintText: "Password",
                        );
                      }),
                      InkWell(
                        onTap: () {
                          // Get.toNamed(Routes.forgetpasswordScreen);
                        },
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(top: 15),
                          child: Text_Utils(
                              fontWeight: FontWeight.normal,
                              text: "Forget Password?",
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.grey.shade700,
                              isUndeLine: false,
                              fontsize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_){
                        return AuthButton(
                            onpress: () {
                              if (formkey.currentState!.validate()) {
                                controller.ownerLogin(
                                    mobileController.text, passController.text);
                              }
                            },
                            Text: "Owner Login");
                      }),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: AuthButton(
                                onpress: () {
                                  Get.offNamed(Routes.mainScreen);
                                },
                                Text: "LOG IN"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: AuthButton(
                                onpress: () {
                                  Get.toNamed(Routes.signUpScreen);
                                },
                                Text: "SIGN UP"),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return InkWell(
                          onTap: () {
                            controller.googleSinUpApp();
                          },
                          child: Container(
                            height: 50,
                            width: 300,

                            alignment: Alignment.center,
                            decoration:  BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                                shape: BoxShape.rectangle,
                                border: const Border.fromBorderSide(
                                    BorderSide(
                                        color: mainColor, width: 1))),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/google.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text_Utils(
                                    fontWeight: FontWeight.bold,
                                    text: "SIGN IN WITH GOOGLE",
                                    color: Colors.black,
                                    isUndeLine: false,
                                    fontsize: 16),

                              ],
                            ),
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          print(MediaQuery.of(context).size.height);
                          Get.offNamed(Routes.mainScreen);
                        },
                        child: const Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'Continue As a Guest..',
                            color: Colors.black,
                            isUndeLine: true,
                            fontsize: 16),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
      // bottomSheet: InkWell(
      //   onTap: () {
      //     _controller.isOpened ? _controller.hide() : _controller.show();
      //   },
      //   child: SolidBottomSheet(
      //
      //     maxHeight: 350,
      //     controller: _controller,
      //     draggableBody: true,
      //     headerBar: SingleChildScrollView(
      //       child: Column(
      //         children: [
      //           Container(
      //             clipBehavior: Clip.antiAlias,
      //             decoration: const BoxDecoration(
      //                 gradient: LinearGradient(
      //                     colors: [
      //                       Colors.amber,
      //                       Colors.orange,
      //                     ],
      //                     begin: Alignment.topCenter,
      //                     end: Alignment.bottomCenter),
      //                 borderRadius:
      //                     BorderRadius.only(topLeft: Radius.circular(30))),
      //             height: MediaQuery.of(context).size.height * (1 / 8),
      //             child: Center(
      //                 child: Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: const [
      //                 Text_Utils(
      //                     fontWeight: FontWeight.bold,
      //                     text: 'Drag To Sign Up',
      //                     color: Colors.white,
      //                     isUndeLine: false,
      //                     fontsize: 21),
      //                 SizedBox(
      //                   width: 5,
      //                 ),
      //                 Icon(
      //                   Icons.arrow_upward_outlined,
      //                   color: Colors.white,
      //                 )
      //               ],
      //             )),
      //           ),
      //         ],
      //       ),
      //     ),
      //     body: SingleChildScrollView(
      //       child: Column(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
      //             child: Form(
      //               key: formkey,
      //               child: Column(
      //                 children: [
      //                   Auth_TextFormField(
      //                     controller: nameController,
      //                     obsecureText: false,
      //                     validator: (value) {},
      //                     prefex: const Icon(
      //                       Icons.person,
      //                       size: 30,
      //                       color: mainColor,
      //                     ),
      //                     suffix: const Text(""),
      //                     hintText: "Name",
      //                   ),
      //                   const SizedBox(
      //                     height: 20,
      //                   ),
      //                   Auth_TextFormField(
      //                     controller: mobileController,
      //                     obsecureText: false,
      //                     validator: (value) {},
      //                     prefex: Icon(Icons.phone,
      //                         size: 30,
      //                         color: Get.isDarkMode ? pinkClr : mainColor),
      //                     suffix: const Text(""),
      //                     hintText: "Mobile",
      //                   ),
      //                   const SizedBox(
      //                     height: 20,
      //                   ),
      //                   Auth_TextFormField(
      //                     controller: passController,
      //                     obsecureText: true,
      //                     validator: (value) {},
      //                     prefex: Icon(
      //                       Icons.lock,
      //                       size: 30,
      //                       color: Get.isDarkMode ? pinkClr : mainColor,
      //                     ),
      //                     suffix: GestureDetector(
      //                         onTap: () {},
      //                         child: Icon(Icons.visibility_off,
      //                             color: Get.isDarkMode ? pinkClr : mainColor)),
      //                     hintText: "Password",
      //                   ),
      //                   const SizedBox(
      //                     height: 25,
      //                   ),
      //                   CheckWidget(),
      //                   const SizedBox(
      //                     height: 10,
      //                   ),
      //                   AuthButton(
      //                     onpress: () {},
      //                     Text: "SIGN UP",
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    ));
  }
}
