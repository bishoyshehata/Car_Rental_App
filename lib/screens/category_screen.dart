
import 'package:flutter/material.dart';

import '../widgets/text_utils.dart';

class Category_Screen extends StatelessWidget {
  const Category_Screen({Key? key}) : super(key: key);

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
