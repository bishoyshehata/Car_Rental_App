

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/text_utils.dart';

class Empty_Cars extends StatelessWidget {
  const Empty_Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Lottie.asset(
            "assets/lottie/nocars.json",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20,),
          const Text_Utils(
              fontWeight: FontWeight.bold,
              text: 'Waiting for your Cars..',
              color: Colors.orange,
              isUndeLine: false,
              fontsize: 22)
        ],
      ),
    );
  }
}
