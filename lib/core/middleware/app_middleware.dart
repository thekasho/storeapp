import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/core/services/services.dart';

class AppMiddleware extends GetMiddleware {

  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getString("step") == "2"){
      return const RouteSettings(name: AppRoute.homePage);
    }
    if(myServices.sharedPreferences.getString("step") == "1"){
      return const RouteSettings(name: AppRoute.login);
    }
    else {
      return const RouteSettings(name: AppRoute.onboarding);
    }
  }

}