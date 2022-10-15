import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class Share_Bookings extends StatelessWidget {
  const Share_Bookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

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
                      text: 'Eagles rent offers flexible transition from minute-based to long-time carsharing',
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
