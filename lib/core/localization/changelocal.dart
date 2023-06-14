import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/apptheme.dart';
import 'package:storefull/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  changeLang(String langcode){
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    print(sharedPrefLang);

    if(sharedPrefLang == "ar"){
      language = const Locale("ar");
      appTheme = themeArabic;
      print("Changing Language from AR to: $language");
    } else if(sharedPrefLang == "en"){
      language = const Locale("en");
      appTheme = themeEnglish;
      print("Changing Language from EN to: $language");
    }
    else {
      language = Locale(Get.deviceLocale!.languageCode);
      print("Changing Language to: $language");
    }

    super.onInit();
  }

}