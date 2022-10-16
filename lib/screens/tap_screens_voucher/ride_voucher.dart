import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class Ride_Vouchers extends StatelessWidget {
   Ride_Vouchers({Key? key}) : super(key: key);
  final TextEditingController voucherCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text_Utils(
                        fontWeight: FontWeight.bold,
                        text: 'Vouchers',
                        color: mainColor,
                        isUndeLine: false,
                        fontsize: 18)),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    showModalBottomSheet<void>(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(

                            color: mainColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text_Utils(
                                        fontWeight: FontWeight.bold,
                                        text: "ENTER VOUCHER CODE",
                                        color: Colors.white,
                                        isUndeLine: false,
                                        fontsize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text_Utils(
                                        fontWeight: FontWeight.bold,
                                        text: "This voucher will get added to your voucher wallet",
                                        color: Colors.white,
                                        isUndeLine: false,
                                        fontsize: 14),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(enabled: true,

                                    controller: voucherCodeController,
                                    obscureText: false,
                                    cursorColor: Colors.white,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {},

                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(color: Colors.red),
                                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                                      fillColor: mainColor,
                                      labelText: 'VOUCHER CODE',
                                      labelStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.bold) ,
                                      filled: true,
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
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width+100,
                                    height: MediaQuery.of(context).size.width/7,
                                    child: ElevatedButton(

                                      onPressed: () {},
                                      child: const Text_Utils(
                                          fontWeight: FontWeight.bold,
                                          text: 'ADD VOUCHER',
                                          color:mainColor,
                                          isUndeLine:false,
                                          fontsize: 20),
                                      style:ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          textStyle: const TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: mainColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text_Utils(
                          fontWeight: FontWeight.normal,
                          text: 'ADD VOUCHER',
                          color: Colors.black,
                          isUndeLine: false,
                          fontsize: 14)
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * (.08),
                ),
                Text_Utils(
                    fontWeight: FontWeight.bold,
                    text: 'Currently, there are no vouchers available',
                    color: mainColor,
                    isUndeLine:false,
                    fontsize: 14)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
