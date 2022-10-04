import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/auth/auth_button.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Welcome_Screen extends StatelessWidget {
  Welcome_Screen({Key? key}) : super(key: key);
  final TextEditingController Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset("assets/images/splash_ui.png", fit: BoxFit.fill),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 50),
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.bungee(
                        color: Colors.black.withOpacity(0.7), fontSize: 40),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    "At Eagle LIMOuSINE",
                    style:
                        GoogleFonts.bungee(color: Colors.white, fontSize: 30),
                  ),
                ),
                Lottie.asset("assets/lottie/car_transparent.json"),
                Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                            child: Image.asset("assets/images/world.png")
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'Select your Language..',
                            color: Colors.white,
                            isUndeLine: false,
                            fontsize: 30)
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: 0,
                          onChanged: (value) {},
                          activeColor: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.normal,
                            text: "للعربية",
                            color: Colors.white,
                            isUndeLine: false,
                            fontsize: 20)
                      ],
                    ),
                    SizedBox(width: 30,),
                    Container(width: 1,height: 20,
                      color: Colors.white,),
                    SizedBox(width: 10,),

                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: 0,
                          onChanged: (value) {},
                          activeColor: Colors.black,

                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.normal,
                            text: "English",
                            color: Colors.white,
                            isUndeLine: false,
                            fontsize: 20)
                      ],
                    ),
                  ],
                ),
                AuthButton(
                    onpress: () {
                      Get.offNamed(Routes.logInScreen);
                    },
                    Text: 'استمرار / Next'),

              ],
            ),
          ),
        ],
      ),
    ));
  }
}
