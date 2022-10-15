import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class Ride_Bookings extends StatelessWidget {
  const Ride_Bookings({Key? key}) : super(key: key);

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
                  children:const [
                     Icon(
                      Icons.favorite_border,
                      color: mainColor,
                    ),
                     SizedBox(
                      width: 5,
                    ),
                     Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: 'FAVORITE DRIVERS',
                        color: Colors.black,
                        isUndeLine: false,
                        fontsize: 15)
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height*(.25) ,),

                const Icon(Icons.do_not_disturb_on_outlined,color: mainColor,size: 150,),
                const SizedBox(height: 5,),
                const Text_Utils(
                    fontWeight: FontWeight.bold,
                    text: 'NO BOOKING HISTORY',
                    color: Colors.black,
                    isUndeLine: false,
                    fontsize: 17),
                const SizedBox(height: 10,),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: 'Eagles rent offers on demand taxi services and pre-booked airport transfers',
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
