import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:car_rental/theme/strings.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/routes.dart';
import '../../../widgets/auth/auth_button.dart';
import '../../../widgets/auth/auth_text_form_field.dart';

class Admin_Login_Screen extends StatelessWidget {
  Admin_Login_Screen({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  final controller = Get.put(AuthController());

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
                                      text: "Admin",
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
                      GetBuilder<AuthController>(builder: (_){
                        return  Auth_TextFormField(
                          keyboard: TextInputType.text,
                          controller: emailController,
                          obsecureText: false,
                          validator: (value) {
                            if (!RegExp(validationEmail).hasMatch(value)) {
                              return "Invalid e-mail";
                            } else {
                              return null;
                            }
                          },
                          prefex:
                          Icon(Icons.mail, size: 30, color: mainColor),
                          suffix: const Text(""),
                          hintText: "Email",
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
                                controller.AdminLogin(
                                    emailController.text.trim(), passController.text.trim());
                              }
                            },
                            Text: "Admin Login");
                      }),

                      const SizedBox(
                        height: 5,
                      ),
                      AuthButton(
                          onpress: () {
                            Get.toNamed(Routes.signUpScreen);
                          },
                          Text: "SIGN UP"),

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
    ));
  }
}
