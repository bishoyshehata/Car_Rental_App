import 'package:car_rental/screens/layout/snipping_sheet.dart';
import 'package:flutter/material.dart';


class Rent_Screen extends StatelessWidget {
  Rent_Screen({Key? key}) : super(key: key);

  var scaffold_key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(

             child: SimpleSnappingSheet()

          )),
    );
  }
}
