import 'package:car_rental/logic/controllers/auth_controller.dart';
import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/main_controllerr.dart';
import '../../widgets/text_utils.dart';

class Main_Screen extends StatelessWidget {
  Main_Screen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();
  final controllerAuth = Get.put(AuthController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
          backgroundColor: Colors.white,
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(0),
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
                          SizedBox(
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
                                    "assets/images/logo.jpeg",
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
                          SizedBox(
                            height: 5,
                          ),
                          Text_Utils(
                              fontWeight: FontWeight.normal,
                              text: 'User Name',
                              color: Colors.white,
                              isUndeLine: false,
                              fontsize: 17)
                        ],
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Our Cars'),
                  onTap: () {
                    controller.getOurCars();
                    Get.toNamed(Routes.ourCarsScreen);
                  },
                ),
                ListTile(
                  title: const Text('Car Info '),
                  onTap: () {
                    controller.getCarInfo("66");
                    Get.toNamed(Routes.carInfoScreen);
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
                Divider(
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
                    controllerAuth.logOut();
                  },
                ),
              ],
            ), // Populate the Drawer in the next step.
          ),
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.black, Colors.orange]),
              ),
            ),
            elevation: 5,
            backgroundColor: mainColor,
            actions: [],
            title: Center(
              child: Text_Utils(
                  fontWeight: FontWeight.bold,
                  text: controller.Title[controller.currentIndex.value],
                  color: Get.isDarkMode ? darkGreyClr : Colors.white,
                  isUndeLine: false,
                  fontsize: 27),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.shifting,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.car_rental,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: 'Rent',
                activeIcon: Icon(
                  Icons.car_rental,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.offline_share,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: 'Share',
                activeIcon: Icon(
                  Icons.offline_share,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.drive_eta_outlined,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: 'Ride',
                activeIcon: Icon(
                  Icons.drive_eta_rounded,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_suggest_outlined,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: 'Subscribe',
                activeIcon: Icon(
                  Icons.settings_suggest_rounded,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: 'Account',
                activeIcon: Icon(
                  Icons.account_circle_rounded,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
              ),
            ],
            selectedLabelStyle: TextStyle(fontSize: 10),
            selectedItemColor: mainColor,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize: 10),
            showUnselectedLabels: true,
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs,
          ));
    }));
  }
}
