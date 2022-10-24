import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/auth/check_widgit.dart';
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
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  SolidController _controller = SolidController();
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Image.asset("assets/images/logo.jpeg"),
                                  clipBehavior: Clip.antiAlias,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text_Utils(
                                        fontWeight: FontWeight.w500,
                                        text: "LOG IN",
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
                  Container(
                    height: MediaQuery.of(context).size.height * (1 / 2),
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 25,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Auth_TextFormField(
                            controller: mailController,
                            obsecureText: false,
                            validator: (value) {},
                            prefex: Icon(Icons.mail,
                                size: 30,
                                color: Get.isDarkMode ? pinkClr : mainColor),
                            suffix: const Text(""),
                            hintText: "E-Mail",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Auth_TextFormField(
                            controller: passController,
                            obsecureText: false,
                            validator: (value) {},
                            prefex: Icon(
                              Icons.lock,
                              size: 30,
                              color: Get.isDarkMode ? pinkClr : mainColor,
                            ),
                            suffix: GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.visibility_off,
                                    color:
                                        Get.isDarkMode ? pinkClr : mainColor)),
                            hintText: "Password",
                          ),
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
                            height: 65,
                          ),
                          AuthButton(
                              onpress: () {
                                Get.offNamed(Routes.mainScreen);
                              },
                              Text: "LOG IN"),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){

                            },

                            child: GetBuilder<AuthController>(builder: (_){
                              return InkWell(
                                onTap: (){
                                  controller.googleSinUpApp();

                                },
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.fromBorderSide(
                                          BorderSide(color: mainColor, width: 1))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/images/google.png"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text_Utils(
                                          fontWeight: FontWeight.bold,
                                          text: "SIGN IN WITH GOOGLE",
                                          color: Colors.deepOrange,
                                          isUndeLine: false,
                                          fontsize: 16)
                                    ],
                                  ),
                                ),
                              );
                            })
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              print(MediaQuery.of(context).size.height);
                              Get.offNamed(Routes.mainScreen);
                            },
                            child: const Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'Continue As a Guest..',
                                color: mainColor,
                                isUndeLine: true,
                                fontsize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: InkWell(
        onTap: () {
          _controller.isOpened ? _controller.hide() : _controller.show();
        },
        child: SolidBottomSheet(
          maxHeight: 350,
          controller: _controller,
          draggableBody: true,
          headerBar: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.yellowAccent],
                      ),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30))),
                  height: MediaQuery.of(context).size.height * (1 / 8),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text_Utils(
                          fontWeight: FontWeight.bold,
                          text: 'Drag To Sign Up',
                          color: Colors.white,
                          isUndeLine: false,
                          fontsize: 21),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_upward_outlined,
                        color: Colors.white,
                      )
                    ],
                  )),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 30),
                  child: Column(
                    children: [
                      Auth_TextFormField(
                        controller: nameController,
                        obsecureText: false,
                        validator: (value) {},
                        prefex: Icon(
                          Icons.person,
                          size: 30,
                          color: mainColor,
                        ),
                        suffix: Text(""),
                        hintText: "Name",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Auth_TextFormField(
                        controller: mailController,
                        obsecureText: false,
                        validator: (value) {},
                        prefex: Icon(Icons.mail,
                            size: 30,
                            color: Get.isDarkMode ? pinkClr : mainColor),
                        suffix: Text(""),
                        hintText: "E-Mail",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Auth_TextFormField(
                        controller: passController,
                        obsecureText: true,
                        validator: (value) {},
                        prefex: Icon(
                          Icons.lock,
                          size: 30,
                          color: Get.isDarkMode ? pinkClr : mainColor,
                        ),
                        suffix: GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.visibility_off,
                                color: Get.isDarkMode ? pinkClr : mainColor)),
                        hintText: "Password",
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CheckWidget(),
                      SizedBox(
                        height: 32,
                      ),
                      AuthButton(
                        onpress: () {},
                        Text: "SIGN UP",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
