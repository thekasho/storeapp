import 'package:get/get.dart';

import 'package:storefull/core/services/services.dart';

networkTranslate(dbColAr, dbColEn) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString("lang") == "ar") {
    return dbColAr;
  } else {
    return dbColEn;
  }
}
