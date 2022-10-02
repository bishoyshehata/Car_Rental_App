import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/text_utils.dart';


class Setting_Screen extends StatelessWidget {
   Setting_Screen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text_Utils(
                  fontWeight: FontWeight.normal,
                  text: "Home",
                  color: Colors.black,
                  isUndeLine: false,
                  fontsize: 30),
            ),
          )
        ],
      )
    );
  }
}
