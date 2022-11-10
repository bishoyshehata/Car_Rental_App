import 'package:car_rental/logic/services/admin_login_service.dart';
import 'package:car_rental/logic/services/owner_login_service.dart';
import 'package:car_rental/logic/services/register_owner.dart';
import 'package:car_rental/models/admin_login_model.dart';
import 'package:car_rental/models/owner_login_model.dart';
import 'package:car_rental/models/register_owner_model.dart';
import 'package:car_rental/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthController extends GetxController {
  // welcome screen

  String orderType = 'English';
  var isSignIn = false;
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
  final GetStorage adminBox = GetStorage();



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

  void RegistOwner(String name, String password, String nid,
      String mobile, String address) async {
    Map<String, String> data;
    data = {
      "name": name,
      "owner_password": password,
      "nid": nid,
      "address": address,
      "owner_mobile": mobile,
    };
    RegisterOwnerModel user = await RegisterOwnerService.RegistService(data);
    if (user.status == 1) {
      print(user.data.nid);
      Get.snackbar(
        "Success",
        user.message,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.offNamed(Routes.mainLogInScreen);
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

  // Owner Login with DB ==================================
  void ownerLogin(String mobile, String password) async {
    Map<String, String> data = {
      "owner_mobile": mobile,
      "owner_password": password
    };
    OwnerLoginModel user = await ownerLoginService.ownerLogin(data);
    if (user.status == 1) {
      authBox.write("access_token", user.data.accessToken);
      authBox.write("name", user.data.name);
      authBox.write("mobile", user.data.mobile);
      authBox.write("address", user.data.address);
      authBox.write("nid", user.data.nid);
      print(GetStorage().read("name"));
      print(GetStorage().read("nid"));
      print(GetStorage().read("mobile"));
      print(GetStorage().read("address"));
      isSignIn = true;
      authBox.write("logged", isSignIn);
      Get.offNamed(Routes.mainScreen);
    } else{
      Get.snackbar(
        "Error",
        user.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    update();

  }


  // Admin Login with DB ==================================
  void AdminLogin(String email, String password) async {
    Map<String, String> data = {
      "email": email,
      "password": password
    };
    AdminLoginModel user = await adminLoginService.adminLogin(data);
    if (user.status == 1) {
      adminBox.write("admin_access_token", user.data.accessToken);
      adminBox.write("admin_name", user.data.name);
      adminBox.write("admin_email", user.data.email);
      adminBox.write("admin_image", user.data.image);
      adminBox.write("admin_my_role", user.data.myRole);
      print(GetStorage().read("admin_name"));
      print(GetStorage().read("admin_email"));
      print(GetStorage().read("admin_image"));
      print(GetStorage().read("admin_my_role"));
      isSignIn = true;
      adminBox.write("admin_logged", isSignIn);
      Get.offNamed(Routes.adminMainScreen);
    } else{
      Get.snackbar(
        "Error",
        user.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    update();

  }
  void logOut() {
    GetStorage().remove("access_token");
    GetStorage().remove("name");
    GetStorage().remove("address");
    GetStorage().remove("mobile");
    GetStorage().remove("nid");
    isSignIn=false ;
    GetStorage().remove("logged");

    print("===================");
    print(GetStorage().read("access_token"));
    print("===================");

    Get.snackbar(
      "Success",
      "You LoggedOut Successfully",
      backgroundColor: Colors.green,
      colorText: Colors.white,
      icon: const Icon(Icons.error, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
    );
    Get.offAllNamed(Routes.welcomeScreen);
  }
  void adminLogOut() {
    adminBox.remove("admin_access_token");
    adminBox.remove("admin_name");
    adminBox.remove("admin_email");
    adminBox.remove("admin_image");
    adminBox.remove("admin_my_role");
    isSignIn=false ;
    GetStorage().remove("admin_logged");

    print("===================");
    print(GetStorage().read("access_token"));
    print("===================");

    Get.snackbar(
      "Success",
      "You LoggedOut Successfully",
      backgroundColor: Colors.green,
      colorText: Colors.white,
      icon: const Icon(Icons.error, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
    );
    Get.offAllNamed(Routes.welcomeScreen);
  }
}
