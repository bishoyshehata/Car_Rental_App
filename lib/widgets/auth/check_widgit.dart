
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/theme.dart';
import '../text_utils.dart';


class CheckWidget extends StatelessWidget {
   CheckWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         InkWell(
            onTap: (){

            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Icon(Icons.done,size: 35,color: pinkClr,)

            ),
          ),

       SizedBox(width: 10,),
        Text_Utils(
            fontWeight: FontWeight.normal,
            text: "I accept ",
            color: Get.isDarkMode ?Colors.white : Colors.black,
            isUndeLine: false,
            fontsize: 16),
        InkWell(
          onTap: (){},
          child: const Text_Utils(
              fontWeight: FontWeight.normal,
              text: "terms & conditions",
              color: Colors.orange,
              isUndeLine: true,
              fontsize: 16),
        )
      ],
    );
  }
}
