import 'package:auto_size_text/auto_size_text.dart';
import 'package:car_rental/widgets/auth/auth_button.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../routes/routes.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset("assets/images/welcomeBackground.jpg", fit: BoxFit.fill)),
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                        GoogleFonts.bungee(color: Colors.orange, fontSize: 40),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Expanded(
                        child: AutoSizeText(
                          textAlign: TextAlign.center,
                          "At Eagles Limousine",
                          style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                      height:MediaQuery.of(context).size.height*.4,
                      width: MediaQuery.of(context).size.width*.8,
                      child: Lottie.asset("assets/lottie/car_transparent.json",fit: BoxFit.cover)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
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
                                color: Colors.white,
                                isUndeLine: false,
                                fontsize: 30)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

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
                        Get.toNamed(Routes.mainLogInScreen);
                      },
                      Text: 'استمرار / Next' ,),
                ],
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
