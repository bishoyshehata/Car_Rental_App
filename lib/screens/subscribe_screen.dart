
import 'package:flutter/material.dart';

import '../widgets/text_utils.dart';

class Subscribe_Screen extends StatelessWidget {
  const Subscribe_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body:
          Center(
            child: Container(
              child: Text_Utils(
                  fontWeight: FontWeight.normal,
                  text: "Home",
                  color: Colors.black,
                  isUndeLine: false,
                  fontsize: 30),
            ),
          ),
        );
  }
}
