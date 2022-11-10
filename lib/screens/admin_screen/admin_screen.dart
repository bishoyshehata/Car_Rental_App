import 'package:car_rental/logic/controllers/main_controllerr.dart';
import 'package:car_rental/screens/admin_screen/drawer.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Admin_Main_Screen extends StatelessWidget {
  Admin_Main_Screen({Key? key}) : super(key: key);
  final controller = Get.find<MainController>();
  Admin_Drawer _admin_drawer = new Admin_Drawer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    appBar: AppBar(
    flexibleSpace: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Colors.amber, Colors.orange]),
    ),
    ),
    elevation: 5,
    title: const Text_Utils(
    fontWeight: FontWeight.bold,
    text: "Admin Home",
    color: Colors.white,
    isUndeLine: false,
    fontsize: 27),
    ),
    drawer: _admin_drawer.drawer(),
    body: Center(
    child: Text_Utils(fontWeight: FontWeight.bold, text: "Admin DashBoard", color: Colors.black, isUndeLine
        : false,fontsize :30
    )

    )
    )
    );
  }
}
