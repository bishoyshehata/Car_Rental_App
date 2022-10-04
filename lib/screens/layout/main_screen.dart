import 'package:car_rental/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../logic/controllers/main_controllerr.dart';
import '../../widgets/text_utils.dart';

class Main_Screen extends StatelessWidget {
  Main_Screen({Key? key}) : super(key: key);

  final Controller = Get.find<MainController>();

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
                          SizedBox(height: 5,),
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
                  title: const Text('Home'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),

                ListTile(
                  title: const Text('Available Cars'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
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
                  thickness: .5,
                ),
                ListTile(
                  title: const Text('Abou Us '),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Log Out '),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ), // Populate the Drawer in the next step.
          ),
          appBar: AppBar(
            elevation: 5,
            backgroundColor: Get.isDarkMode ? pinkClr : mainColor,
            actions: [],
            title: Center(
              child: Text_Utils(
                  fontWeight: FontWeight.bold,
                  text: Controller.Title[Controller.currentIndex.value],
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
            currentIndex: Controller.currentIndex.value,
            onTap: (index) {
              Controller.currentIndex.value = index;
            },
          ),
          body: IndexedStack(
            index: Controller.currentIndex.value,
            children: Controller.tabs,
          ));
    }));
  }
}
