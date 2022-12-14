import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Eagles Limousine',
      debugShowCheckedModeBanner: false,

      initialRoute:
      Routes.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}
// GetStorage().read("logged") == true
// ? Routes.mainScreen
//     :