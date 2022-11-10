import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../logic/controllers/auth_controller.dart';
import '../../widgets/text_utils.dart';

class Admin_Drawer{
  GetStorage adminBox = GetStorage();
  final controllerAuth =Get.find<AuthController>();
  Widget drawer(){
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/images/splash_ui.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              adminBox.read("image"),
                            ),
                          ),
                          Positioned(
                              left: 70,
                              top: 75,
                              child: Icon(
                                Icons.camera_alt,
                                size: 25,
                                color: Colors.black.withOpacity(.7),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
            AutoSizeText(
              adminBox.read("admin_name"),textAlign: TextAlign.center,
              style:
              TextStyle(

                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,

              ),
            )
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('Our Cars'),
            onTap: () {
              // controller.getOurCars();
              // Get.toNamed(Routes.ourCarsScreen);
            },
          ),
          ListTile(
            title: const Text('Car Info '),
            onTap: () {
              // controller.getCarInfo("66");
              // Get.toNamed(Routes.carInfoScreen);
            },
          ),
          ListTile(
            title: const Text('Rent a car'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Terms & Conditions'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: .9,
          ),
          ListTile(
            title: const Text('About Us '),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Log Out '),
            onTap: () {
              controllerAuth.adminLogOut();
            },
          ),
        ],
      ), // Populate the Drawer in the next step.
    );
  }

}