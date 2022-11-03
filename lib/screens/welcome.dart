import 'package:auto_size_text/auto_size_text.dart';
import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/widgets/auth/auth_button.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Welcome_Screen1 extends StatelessWidget {
  Welcome_Screen1({Key? key}) : super(key: key);
  final TextEditingController Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/splash_ui.png", fit: BoxFit.cover),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: AutoSizeText(
                          "Welcome",
                          style:
                          GoogleFonts.bungee(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: AutoSizeText(
                            "At Eagle Limosine",
                            style:
                                GoogleFonts.bungee(color: Colors.white, fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Lottie.asset("assets/lottie/car_transparent.json"),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              child: Image.asset("assets/images/world.png")),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * (3 / 4),
                              height: 50,
                              child: const Text_Utils(
                                  fontWeight: FontWeight.bold,
                                  text: 'Select your Language..',
                                  color: Colors.black,
                                  isUndeLine: false,
                                  fontsize: 30)),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const OrderTypeButton(
                            value: "ara", title: "ara", amount: 10, isfree: true),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text_Utils(
                            fontWeight: FontWeight.normal,
                            text: "للعربية",
                            color: Colors.white,
                            isUndeLine: false,
                            fontsize: 20),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const OrderTypeButton(
                            value: "en", title: "en", amount: 10, isfree: true),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text_Utils(
                            fontWeight: FontWeight.normal,
                            text: "English",
                            color: Colors.white,
                            isUndeLine: false,
                            fontsize: 20)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthButton(
                        onpress: () {
                          Get.toNamed(Routes.logInScreen);
                        },
                        Text: 'استمرار / Next'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class OrderTypeButton extends StatelessWidget {
  final String value;
  final String title;
  final double amount;
  final bool isfree;

  const OrderTypeButton(
      {Key? key,
      required this.value,
      required this.title,
      required this.amount,
      required this.isfree})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (buttonController) {
      return InkWell(
        onTap: () {
          buttonController.setOrderType(value);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: value,
              groupValue: buttonController.orderType,
              onChanged: (String? value) {
                buttonController.setOrderType(value!);
              },
              activeColor: Colors.black,
            ),
          ],
        ),
      );
    });
  }
}
