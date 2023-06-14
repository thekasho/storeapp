import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/core/services/services.dart';
import 'package:storefull/veiw/screen/language.dart';

import 'core/localization/changelocal.dart';
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

    LocalController controller = Get.put(LocalController());

    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: AppColor.black),
          displayMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: AppColor.black),
          bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 15.0,),
          displaySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: AppColor.black),
        ),
        primaryColor: Colors.blue,
      ),
      // home: const Language(),
      home: Language(),
      routes: routes,
    );
  }
}