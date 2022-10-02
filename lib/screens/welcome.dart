import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/auth/auth_button.dart';
import 'package:car_rental/widgets/auth/auth_text_form_field.dart';
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
                const Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: 'Select your Language..',
                        color: Colors.white,
                        isUndeLine: false,
                        fontsize: 30)),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: Auth_TextFormField(
                      controller: Controller,
                      obsecureText: false,
                      validator: () {},
                      prefex: const Icon(
                        Icons.flag,
                        color: mainColor,
                      ),
                      suffix: const Icon(Icons.arrow_drop_down),
                      hintText: 'Enter your Language...'),
                ),
                const SizedBox(
                  height: 5,
                ),
                AuthButton(
                    onpress: () {
                      Get.offNamed(Routes.logInScreen);
                    },
                    Text: 'Save & Continue'),


              ],
            ),
          ),
        ],
      ),
    ));
  }
}
