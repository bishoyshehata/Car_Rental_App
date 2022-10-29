

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/text_utils.dart';

class Empty_Cars extends StatelessWidget {
  const Empty_Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.orange,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            "assets/lottie/no_cars.json",
            fit: BoxFit.cover,
          ),
          const Text_Utils(
              fontWeight: FontWeight.bold,
              text: 'Waiting for your Cars..',
              color: Colors.black,
              isUndeLine: false,
              fontsize: 20)
        ],
      ),
    );
  }
}
