import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/services/services.dart';
import 'binding/initialbinding.dart';
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
      theme: controller.appTheme,
      // home: const Language(),
      initialBinding: InitialBindings(),
      // routes: routes,
      getPages: routes,
    );
  }
}