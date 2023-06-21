import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/core/services/services.dart';
import 'package:storefull/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  // shared prefrenses anlysing
  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;

    if (currentPage >= onBoardingList.length) {

      myServices.sharedPreferences.setString("step", "1");

      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
