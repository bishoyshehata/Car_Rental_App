import 'package:car_rental/logic/controllers/main_controllerr.dart';
import 'package:car_rental/screens/tab_screens_booking/rent.dart';
import 'package:car_rental/screens/tab_screens_booking/ride.dart';
import 'package:car_rental/screens/tab_screens_booking/share.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBokking_Screen extends StatelessWidget {
  MyBokking_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 5,
              backgroundColor: mainColor,
              bottom:  PreferredSize(
                child: TabBar(

                  unselectedLabelColor: Colors.red,
                  indicatorColor: Colors.white,
                  indicatorSize:TabBarIndicatorSize.label,


                  tabs: [
                    Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:'Rent',
                        color: Colors.white,
                        isUndeLine: false,
                        fontsize: 16),

                    Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:'Share',
                        color: Colors.white,
                        isUndeLine: false,
                        fontsize: 16),
                    Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:'Ride',
                        color: Colors.white,
                        isUndeLine: false,
                        fontsize: 16),
                  ]
                  ,
                ),
                preferredSize: Size.fromHeight(30.0),

              ),
              title: const Text('My Bookings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
            ),

            body:  TabBarView(
              children: [
                Rent_Bookings(),

                Share_Bookings(),

                Ride_Bookings(),
              ],
            ),
          ),
        )

    );
  }
}
