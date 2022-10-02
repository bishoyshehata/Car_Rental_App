import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: Text_Utils(
                fontWeight: FontWeight.normal,
                text: "Home",
                color: Colors.black,
                isUndeLine: false,
                fontsize: 30),
          ),
        ),
      ),
    );
  }
}
