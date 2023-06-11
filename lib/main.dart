import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/veiw/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0, color: AppColor.black),
          bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 20.0,),
        ),
        primaryColor: Colors.blue,
      ),
      home: const OnBoarding(),
    );
  }
}