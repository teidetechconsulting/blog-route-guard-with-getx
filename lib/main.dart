import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_auth_guard/navigation.dart';
import 'package:getx_auth_guard/services/auth_service.dart';

void main() async {
  await Get.putAsync(() => AuthService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My App",
      getPages: appPages,
      initialRoute: Routes.home,
    );
  }
}
