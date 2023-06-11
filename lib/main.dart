import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/core/services/services.dart';
import 'package:storefull/veiw/screen/language.dart';

import 'core/localization/translation.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: AppColor.black),
          bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 15.0,),
        ),
        primaryColor: Colors.blue,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}