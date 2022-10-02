import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/routes.dart';
import '../../theme/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/check_widgit.dart';
import '../../widgets/auth/footer_container.dart';
import '../../widgets/text_utils.dart';

class SignUp_Screen extends StatelessWidget {
  SignUp_Screen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
             body:
              SingleChildScrollView(
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
                          child: Image.asset("assets/images/splash_ui.png", fit: BoxFit.fill),
                          clipBehavior: Clip.antiAlias,


                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)

                              ),
                              child: Image.asset("assets/images/logo.jpeg") ,
                              clipBehavior: Clip.antiAlias,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200,
                          left: 150,
                          child: Row(
                            children: const [
                              Text_Utils(
                                  fontWeight: FontWeight.w500,
                                  text: "SIGN UP",
                                  color:
                                   Colors.white,
                                  isUndeLine: false,
                                  fontsize: 28),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(

                      children: [
                        Padding(padding:  EdgeInsets.only(left: 25, right: 25 ,),

                          child: Column(
                            children: [

                              SizedBox(height: 20,),
                              Auth_TextFormField(controller: nameController,
                                obsecureText: false,
                                validator: (value){
                                },

                                prefex: Icon(Icons.person,size: 30,color:Get.isDarkMode? Colors.pink: mainColor,),
                                suffix: Text(""),
                                hintText: "Name",
                              ),
                              SizedBox(height: 20,),
                              Auth_TextFormField(controller: mailController,
                                obsecureText: false,
                                validator: (value){


                                },
                                prefex: Icon(Icons.mail,size: 30,color: Get.isDarkMode?pinkClr: mainColor),
                                suffix: Text(""),
                                hintText: "E-Mail",
                              ),
                              SizedBox(height: 20,),

                              Auth_TextFormField(controller: passController,
                                obsecureText: true,
                                validator: (value){

                                },
                                prefex: Icon(Icons.lock,size: 30,color:Get.isDarkMode? pinkClr : mainColor,),
                                suffix: GestureDetector(
                                    onTap: (){
                                    },
                                    child: Icon(Icons.visibility_off,color: Get.isDarkMode? pinkClr : mainColor)

                                ),
                                hintText:"Password",


                              ),

                              SizedBox(height: 25,),
                              CheckWidget(),
                              SizedBox(height: 32,)
                              , AuthButton(onpress: (){
                              },
                                Text: "SIGN UP",
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 30,),

                    FooterContainer(
                      navigate: (){
                        Get.toNamed(Routes.logInScreen );
                      },
                      text1: "Already have an Account? ",
                      text2: "Log in",
                    )
                  ],
                ),
              ),

        )
    );
  }
}
