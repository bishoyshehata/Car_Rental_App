import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/theme.dart';
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
              child:ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    title: const Text('Item 1'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('Item 2'),
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
            actions: [

            ],
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
            unselectedLabelStyle:TextStyle(fontSize: 10),
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
