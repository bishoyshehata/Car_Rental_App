import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../widgets/text_utils.dart';

class User_Account_Screen extends StatelessWidget {
  User_Account_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),

          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: false,
              expandedHeight: MediaQuery
                  .of(context)
                  .size
                  .height * (.31),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/background.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    children: [
                      SizedBox(

                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .13,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: InkWell(
                            onTap: (){
                              Get.toNamed(Routes.myBookingScreen);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text_Utils(
                                    fontWeight: FontWeight.bold,
                                    text: 'MY BOOKING',
                                    color: Colors.grey.shade700,
                                    isUndeLine: false,
                                    fontsize: 16),
                                const Icon(Icons.arrow_forward_ios)

                              ],
                            ),
                          ),

                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(

                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .13,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text_Utils(
                                  fontWeight: FontWeight.bold,
                                  text: 'MY SUBSCRIPTIONS',
                                  color: Colors.grey.shade700,
                                  isUndeLine: false,
                                  fontsize: 16),
                              const Icon(Icons.arrow_forward_ios)

                            ],
                          ),

                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(

                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .13,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text_Utils(
                                      fontWeight: FontWeight.bold,
                                      text: 'PERSONAL INFORMATION',
                                      color: Colors.grey.shade700,
                                      isUndeLine: false,
                                      fontsize: 16),
                                  const Icon(Icons.arrow_forward_ios)

                                ],
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text_Utils(
                                        fontWeight: FontWeight.normal,
                                        text: 'myadmin1@gmail.com',
                                        color: Colors.grey.shade700,
                                        isUndeLine: false,
                                        fontsize: 8),
                                  ]
                              ),
                            ],
                          ),

                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(

                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .13,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: InkWell(
                            onTap: (){
                              Get.toNamed(Routes.vouchersScreen);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text_Utils(
                                    fontWeight: FontWeight.bold,
                                    text: 'VOUCHERS & BENEFITS',
                                    color: Colors.grey.shade700,
                                    isUndeLine: false,
                                    fontsize: 16),
                                const Icon(Icons.arrow_forward_ios)

                              ],
                            ),
                          ),

                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text_Utils(fontWeight: FontWeight.bold,
                                  text: 'BOOKING PROFILES',
                                  color: Colors.grey.shade700,
                                  isUndeLine: false,
                                  fontsize: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text_Utils(
                                      fontWeight: FontWeight.normal,
                                      text: "Eagle's Card 50821581",
                                      color: Colors.grey.shade700,
                                      isUndeLine: false,
                                      fontsize: 8),
                                  const Icon(Icons.arrow_forward_ios)

                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(

                                children: const[
                                   Icon(Icons.table_chart_rounded,color: mainColor,),
                                  const SizedBox(width: 5,),

                                  Text_Utils(
                                      fontWeight: FontWeight.bold,
                                      text:"ADD EXISTING EAGLE'S CARD AS PROFILE"  ,
                                      color: mainColor,
                                      isUndeLine: false,
                                      fontsize: 8),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(

                                children: const [
                                  Icon(Icons.card_travel_outlined,color: mainColor,),
                                  SizedBox(width: 5,),
                                  Text_Utils(
                                      fontWeight: FontWeight.bold,
                                      text: 'ADD CORPORATE RATE PROFILE',
                                      color: mainColor,
                                      isUndeLine: false,
                                      fontsize: 8),

                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(

                                children: const [
                                  Icon(Icons.add,color: mainColor,),
                                  SizedBox(width: 5,),

                                  Text_Utils(
                                      fontWeight: FontWeight.bold,
                                      text: 'ADD PROFILE',
                                      color:mainColor,
                                      isUndeLine: false,
                                      fontsize: 8),

                                ],
                              ),
                              SizedBox(height: 10,),

                            ],
                          ),

                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.message_rounded, color: mainColor,),
                            SizedBox(width: 5,),
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'HELP & CONTACT',
                                color: mainColor,
                                isUndeLine: false,
                                fontsize: 8),

                          ],
                        ),

                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.settings_sharp, color: mainColor,),
                            SizedBox(width: 5,),
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'SETTING',
                                color: mainColor,
                                isUndeLine: false,
                                fontsize: 8),

                          ],
                        ),

                      ),
                      SizedBox(height: 5,),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.power_settings_new_sharp, color: mainColor,),
                            SizedBox(width: 5,),
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'LOG OUT',
                                color: mainColor,
                                isUndeLine: false,
                                fontsize: 8),

                          ],
                        ),

                      ),
                      SizedBox(height: 5,),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.text_snippet_sharp, color: mainColor,),
                            SizedBox(width: 5,),
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'IMPRINT',
                                color: mainColor,
                                isUndeLine: false,
                                fontsize: 8),

                          ],
                        ),

                      ),
                      SizedBox(height: 5,),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.text_snippet_sharp, color: mainColor,),
                            SizedBox(width: 5,),
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'PRIVACY POLICY',
                                color: mainColor,
                                isUndeLine: false,
                                fontsize: 8),

                          ],
                        ),

                      ),
                      SizedBox(height: 5,),


                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: const [
                            Icon(Icons.text_snippet_sharp, color: mainColor,),
                            SizedBox(width: 5,),
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'ANALIYTICS POLICY',
                                color: mainColor,
                                isUndeLine: false,
                                fontsize: 8),

                          ],
                        ),

                      ),
                  const SizedBox(height: 5,)
                    ],
                  )
                ]))
          ],
        ));
  }
}
