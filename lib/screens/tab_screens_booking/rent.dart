import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Rent_Bookings extends StatelessWidget {
  const Rent_Bookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.login,
                      color: mainColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: 'IMPORT RESERVATION',
                        color: Colors.black,
                        isUndeLine: false,
                        fontsize: 15)
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height*(.25) ,),

                Icon(Icons.do_not_disturb_on_outlined,color: mainColor,size: 150,),
                SizedBox(height: 5,),
                Text_Utils(
                    fontWeight: FontWeight.bold,
                    text: 'NO BOOKING HISTORY',
                    color: Colors.black,
                    isUndeLine: false,
                    fontsize: 17),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: 'Eagles rent offers the largest premium car fleet in the world',
                      color: Colors.black,
                      isUndeLine: false,
                      fontsize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
