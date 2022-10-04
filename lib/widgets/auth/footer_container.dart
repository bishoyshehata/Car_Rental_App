import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../theme/theme.dart';
import '../text_utils.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({Key? key, required this.text1, required this.text2, required this.navigate}) : super(key: key);
  final String text1 ;
  final String text2 ;
  final Function() navigate;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: mainColor,
borderRadius: BorderRadius.only(topRight: Radius.circular(30),
    topLeft: Radius.circular(30))

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text_Utils(
              fontWeight: FontWeight.normal,
              text:text1,
              color: Colors.black,
              isUndeLine: false,
              fontsize: 20),
          InkWell(
            onTap: navigate,
            child: Text_Utils(
                fontWeight: FontWeight.normal,
                text: text2,
                color: Colors.white,
                isUndeLine: true,
                fontsize: 20),
          ),
        ],
      ),
    );
  }
}
