import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Splash_Screen extends StatefulWidget {
   Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  Timer ?_timer ;

    _startDelay() {
      _timer = Timer(Duration(seconds: 5), () {
        Get.toNamed(Routes.welcomeScreen);
      });
    }
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.2 ,),
            Center(
              child: Container(
                // clipBehavior: Clip.antiAlias,
                  width:  MediaQuery.of(context).size.width*.9,
                  // decoration: BoxDecoration(color: Colors.orangeAccent,
                  //     borderRadius: BorderRadius.circular(100)),
                  child: Lottie.asset("assets/lottie/splash.json")),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.2 ,),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: AutoSizeText(
                  textAlign: TextAlign.center,
                  "Eagles Limo For Rent",
                  style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: AutoSizeText(
                  textAlign: TextAlign.center,
                  "Nation Wide Rental App..",
                  style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
      _timer?.cancel();
      super.dispose();

  }
}
