import 'package:car_rental/logic/controllers/main_controllerr.dart';
import 'package:car_rental/screens/tap_screens_voucher/rent_voucher.dart';
import 'package:car_rental/screens/tap_screens_voucher/ride_voucher.dart';
import 'package:car_rental/screens/tap_screens_voucher/share_voucher.dart';

import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vouchers_Screen extends StatelessWidget {
  Vouchers_Screen({Key? key}) : super(key: key);



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
                        color: Colors.black,
                        isUndeLine: false,
                        fontsize: 16),

                    Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:'Share',
                        color: Colors.black,
                        isUndeLine: false,
                        fontsize: 16),
                    Text_Utils(
                        fontWeight: FontWeight.bold,
                        text:'Ride',
                        color: Colors.black,
                        isUndeLine: false,
                        fontsize: 16),
                  ]
                  ,
                ),
                preferredSize: Size.fromHeight(30.0),

              ),
              title: const Text('VOUCHERS & BENEFITS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
            ),

            body:  TabBarView(
              children: [
                Rent_Vouchers(),

                Share_Vouchers(),

                Ride_Vouchers()
              ],
            ),
          ),
        )

    );
  }
}
