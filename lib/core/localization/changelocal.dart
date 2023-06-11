import 'dart:ui';

import 'package:get/get.dart';
import 'package:storefull/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(String langcode){
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if(sharedPrefLang == "ar"){
      language = const Locale("ar");
      print("Changing Language to: $language");
    } else if(sharedPrefLang == "en"){
      language = const Locale("en");
      print("Changing Language to: $language");
    }
    else {
      language = Locale(Get.deviceLocale!.languageCode);
      print("Changing Language to: $language");
    }
    super.onInit();
  }

}