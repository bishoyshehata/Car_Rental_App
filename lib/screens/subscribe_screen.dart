
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/text_utils.dart';

class Subscribe_Screen extends StatelessWidget {
  const Subscribe_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(
                child: Container(
                    child:Lottie.asset("assets/lottie/maintain.json")
                ),
              ),
            ],
          ),
        );
  }
}
