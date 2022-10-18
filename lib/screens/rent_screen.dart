import 'package:car_rental/screens/layout/snipping_sheet.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';


class Rent_Screen extends StatelessWidget {
  Rent_Screen({Key? key}) : super(key: key);

  var scaffold_key = GlobalKey<ScaffoldState>();
  final _snappingSheetController = SnappingSheetController();
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
