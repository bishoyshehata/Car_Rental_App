import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/theme.dart';
import '../../routes/routes.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/footer_container.dart';

class Login_Screen extends StatelessWidget {
  Login_Screen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor:  Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                 Stack(
                   children: [
                     Container(
                       width: double.infinity,
                       height: 250,
                       decoration: const BoxDecoration(
                           color: mainColor,
                           borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(60))),


                     ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(

                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100)
                        
                    ),
                  child: Image.asset("assets/images/logo.jpeg") ,
                    clipBehavior: Clip.antiAlias,
                    ),
                ),
              ),
                     Positioned(
                       top:  200,
                       left: 280,
                       child: Row(
                         children: const[
                            Text_Utils(
                               fontWeight: FontWeight.w500,
                               text: "LOG IN",
                               color: Colors.white,
                               isUndeLine: false,
                               fontsize: 28),

                         ],
                       ),
                     ),
                   ],
                 ),
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25,),
                        child: Column(
                          children: [

                            const SizedBox(
                              height: 20,
                            ),
                            Auth_TextFormField(
                              controller: mailController,
                              obsecureText: false,
                              validator: (value) {

                              },
                              prefex: Icon(Icons.mail,
                                  size: 30,
                                  color:
                                      Get.isDarkMode ? pinkClr : mainColor),
                              suffix: const Text(""),
                              hintText: "E-Mail",
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Auth_TextFormField(
                              controller: passController,
                              obsecureText: false,
                              validator: (value) {

                              },
                              prefex: Icon(
                                Icons.lock,
                                size: 30,
                                color: Get.isDarkMode ? pinkClr : mainColor,
                              ),
                              suffix: GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.visibility_off,
                                      color: Get.isDarkMode
                                          ? pinkClr
                                          : mainColor)),
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
                            AuthButton(onpress: () {
                            Get.offNamed(Routes.mainScreen);
                            }, Text: "LOG IN"),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            InkWell(
                                      onTap:(){

                                      },
                                      child: Icon(Icons.facebook_outlined ,color:  Colors.blue ,size:  40,)
                                ),
                                const SizedBox(width: 30,),
                                const Text_Utils(
                                    fontWeight: FontWeight.normal,
                                    text: "OR",
                                    color: mainColor,
                                    isUndeLine: false,
                                    fontsize: 23),

                                const SizedBox(width: 30,),
                                InkWell(
                                      onTap:(){
                                      },
                                      child: Image.asset("assets/images/google.png"))
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 35,),
                      FooterContainer(
                        navigate: (){
                          Get.toNamed(Routes.signUpScreen);
                        },
                        text2:"Sign up" ,
                        text1: "Don't have an Account? ",)
                    ],
                  )
                ],
              ),
            )));
  }
}
