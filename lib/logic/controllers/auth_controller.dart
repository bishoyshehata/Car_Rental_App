import 'package:car_rental/logic/services/owner_login_service.dart';
import 'package:car_rental/logic/services/register_owner.dart';
import 'package:car_rental/models/owner_login_model.dart';
import 'package:car_rental/models/register_owner_model.dart';
import 'package:car_rental/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../theme/strings.dart';

class AuthController extends GetxController {
  // welcome screen

  String orderType = 'English';
  final authStorage = GetStorage();

  String get myOrderTyper => orderType;

  void setOrderType(String type) {
    orderType = type;
    update();
  }

  // login screen

  bool isVisibilty = false;
  bool isCheckBox = false;
  var displayUserName = ''.obs;
  var displayUserPhoto = ''.obs;
  var displayUserEmail = ''.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  var googleSignIn = GoogleSignIn();
  var isSignedIn = false;
  final GetStorage authBox = GetStorage();

  void visibility() {
    isVisibilty = !isVisibilty;

    update();
  }

  void checkBox() {
    isCheckBox = !isCheckBox;

    update();
  }

  void googleSinUpApp() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      displayUserName.value = googleUser!.displayName!;
      displayUserPhoto.value = googleUser.photoUrl!;
      displayUserEmail.value = googleUser.email;

      GoogleSignInAuthentication googleSignInAuthentication =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      await auth.signInWithCredential(credential);

      isSignedIn = true;
      authBox.write("auth", isSignedIn);
      update();

      Get.offNamed(Routes.mainScreen);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  void signOutFromApp() async {
    try {
      await auth.signOut();
      await googleSignIn.signOut();
      displayUserName.value = '';
      displayUserPhoto.value = '';
      //displayUserEmail.value = '';
      isSignedIn = false;
      authBox.remove("auth");
      update();

      Get.offNamed(Routes.welcomeScreen);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  void RegistOwner(String name, String password, String nationalId,
      String mobile, String address) async {
    Map<String, String> data;
    data = {
      "name": name,
      "owner_password": password,
      "nid": nationalId,
      "address": address,
      "owner_mobile": mobile,
    };
    RegisterOwnerModel user = await RegisterOwnerService.RegistService(data);
    if (user.status == 1) {
      Get.snackbar(
        "Success",
        user.message,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.offNamed(Routes.logInScreen);
    } else {
      Get.snackbar(
        "Error",
        user.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // Login with DB ==================================
  void ownerLogin(String mobile, String password) async {
    Map<String, String> data = {
      "owner_mobile": mobile,
      "owner_password": password
    };
    OwnerLoginModel user = await ownerLoginService.ownerLogin(data);
    if (user.status == 1) {
      authStorage.write("access_token", user.data.accessToken);

      Get.toNamed(Routes.mainScreen);
    } else
      Get.snackbar(
        "Error",
        user.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
  }
}
