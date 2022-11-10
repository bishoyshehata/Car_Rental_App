import 'package:car_rental/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../widgets/text_utils.dart';


class Ride_Screen extends StatelessWidget {
   Ride_Screen({Key? key}) : super(key: key);

   final TextEditingController distinationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body:Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/back2.jpeg',fit: BoxFit.fill),),
          Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: mainColor,

                gradient: LinearGradient(
                  colors:[
                    Colors.orange ,
                    Colors.black ,],
                    begin: Alignment.center,end: Alignment.centerLeft
                ),


            ),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text_Utils(
                      fontWeight: FontWeight.bold,
                      text:"BOOK A RIDE",
                      color: Colors.white,
                      isUndeLine: false,
                      fontsize: 20),
                  const Text_Utils(
                      fontWeight: FontWeight.normal,
                      text:"Book on demand or pre-schduled rides",
                      color: Colors.white,
                      isUndeLine: false,
                      fontsize: 14),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,

                    child: TextFormField(
                      controller: distinationController,
                      obscureText: false,
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.text,
                      validator: (value) {},

                      decoration: const InputDecoration(
                        errorStyle: TextStyle(color: Colors.red),
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                        fillColor: mainColor,
                        labelText: 'ENTER DESTINATION',
                        labelStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.bold) ,
                        filled: false,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )

        ],
      )
    );
  }
}
