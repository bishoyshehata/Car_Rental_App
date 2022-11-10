import 'package:bordered_text/bordered_text.dart';
import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/routes.dart';
import '../../widgets/auth/auth_button.dart';

class Main_Login_Scren extends StatelessWidget {
  Main_Login_Scren({Key? key}) : super(key: key);

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
            child: Image.asset(
              "assets/images/white.jpg",
              fit: BoxFit.cover,
            )),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    BorderedText(
                      child: const Text(
                        "As an..",
                        style: TextStyle(color: Colors.orange, fontSize: 40),
                      ),
                      strokeColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [

                          Expanded(
                            child: AuthButton(
                                onpress: () {
                                  Get.offNamed(Routes.adminLoginScreen);

                                },
                                Text: "Admin Login"),
                          ),

                        const SizedBox(
                          width: 10,
                        ),

                          Expanded(
                            child: AuthButton(
                                onpress: () {
                                  Get.offNamed(Routes.ownerLoginScreen);

                                },
                                Text: "Owner Login"),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: AuthButton(
                               onpress: (){
                                 Get.offNamed(Routes.userLoginScreen);
                               },
                                Text: "User Login"),
                          ),

                      ],
                    ),
                    const SizedBox(
                      height: 30,
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
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              shape: BoxShape.rectangle,
                              border: const Border.fromBorderSide(
                                  BorderSide(color: mainColor, width: 1))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                    const SizedBox(
                      height: 20,
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
